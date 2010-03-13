package pojo;

import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import util.AMSProperties;

import dao.CreateMailDAO;

public class CreateMail {
	
	private void debug(int priority, String s){
		if(priority > -1){
			System.out.println("CreateMail:"+s);
		}
	}
	
	public CreateMail(){
		cmDAO = new CreateMailDAO();
	}
	
private HashMap propertySet;
private String sendto;
private String from;
private String emailtxt;
private String template;
private String subject;
CreateMailDAO cmDAO;

public HashMap getPropertySet() {
	return propertySet;
}


public void setPropertySet(HashMap propertySet) {
	this.propertySet = propertySet;
}

private String createSendto(HashMap maildetails){
	
String qry1 = (String) maildetails.get("SENDTOQRY");
String where = (String)maildetails.get("SENDTOQWHERE");
where = replaceRefWhereClause(where, propertySet);

String SQL = qry1 + " ";
if(where.length() > 0){
	SQL+=" WHERE "+where;
}
//first parameter will be returned assuming that it has sendto value
String sendtotmp = cmDAO.getSendto(SQL);

return sendtotmp;
}

private String createBodyTxt(HashMap maildetails){
	String body = (String) maildetails.get("BODYTEXT");	
	return replaceRefWhereClause(body,propertySet);
}

private String getFrom(HashMap maildetails){
	String from = AMSProperties.get("adminemail");
	return ((String) maildetails.get("FROMTEXT")==null?from:(String) maildetails.get("FROMTEXT"));
}
 		
/**
 * This function creates whereclause for the retrieve query 
 * @param sg
 * @param tempData
 * @return where clause
 */
private String replaceRefWhereClause(String sg,HashMap<String, String> tempData) {
	debug(1,"in replace where parts tempData hashmap:"+tempData);
	Pattern pattern = Pattern.compile("\\{(.*?)\\}");
    Matcher matcher  = pattern.matcher(sg);
    String resultStr = new String(sg);
	while(matcher.find()){
		String str = matcher.group();
		String g = str;
		str = g.substring(1,g.length()-1);  	
		String parts[] = str.split("\\.");
		if(parts.length > 0){
			String val = tempData.get(parts[0]);
		StringBuffer charseq=new StringBuffer(g);
		if(val != null)
		resultStr =  resultStr.replace(charseq, val);
		}
		 
	}
	debug(0,"resultStr:"+resultStr);
	return resultStr;
}


public void createEmail(String templatename,HashMap propertySet) throws Exception{
	this.propertySet = propertySet;
	
	HashMap maildetails = null;
	try {
		maildetails = cmDAO.findByTemplate(templatename);
	} catch (Exception e) {
		debug(5,"Exception while email creation");
		throw e;
	}
	
	if(propertySet.containsKey("subject")){
		subject = (String) propertySet.get("subject"); 
	}else{
		subject = (String) maildetails.get("SUBJECT");
	}
	
	
	if(propertySet.containsKey("sendto")){
		sendto = (String) propertySet.get("sendto"); 
	}else{
		sendto = createSendto(maildetails);
	}
	
	
	if(propertySet.containsKey("from")){
		from = (String) propertySet.get("from"); 
	}else{
		from = getFrom(maildetails);
	}
	
	
	if(propertySet.containsKey("emailtxt")){
		emailtxt = (String) propertySet.get("emailtxt"); 
	}else{
		emailtxt =  createBodyTxt(maildetails);
	}
	
	
}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		CreateMail cm = new CreateMail();
		HashMap hm = new HashMap();
		hm.put("empid", "ht082267b");
		hm.put("empname1", "value2");
		String s = "samarjit is {empid}";
		
		cm.replaceRefWhereClause(s, hm);
		try {
			 cm.createEmail("employeenotification",hm);
		} catch (Exception e) {
			e.printStackTrace();
		}
		

	}

}
