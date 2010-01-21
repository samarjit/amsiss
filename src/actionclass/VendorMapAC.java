package actionclass;

import java.io.InputStream;
import java.io.StringBufferInputStream;
import java.util.Iterator;
import java.util.Map;

import org.json.JSONObject;

import pojo.VendorMap;

import com.opensymphony.xwork2.ActionSupport;

public class VendorMapAC extends ActionSupport{
	public void debug(int priority, String s){
		s+="VendorMapAC:"+s;
		if(priority >0)
		System.out.println(s);
	}
	
private String mode;
private String command;
private String rfqid;
private String vendorid;
private String typenotify;
private String suggestdelvtime;
private Map vendorList;
private String department;


 
public String getDepartment() {
	return department;
}
public void setDepartment(String department) {
	this.department = department;
}
public String getTypenotify() {
	return typenotify;
}
public void setTypenotify(String typenotify) {
	this.typenotify = typenotify;
}
public String getSuggestdelvtime() {
	return suggestdelvtime;
}
public void setSuggestdelvtime(String suggestdelvtime) {
	this.suggestdelvtime = suggestdelvtime;
}
public String getVendorid() {
	return vendorid;
}
public void setVendorid(String vendorid) {
	this.vendorid = vendorid;
}
private InputStream inputStream;


public String getMode() {
	return mode;
}
public void setMode(String mode) {
	this.mode = mode;
}
public String getCommand() {
	return command;
}
public void setCommand(String command) {
	this.command = command;
}
public String getRfqid() {
	return rfqid;
}
public void setRfqid(String rfqid) {
	this.rfqid = rfqid;
}
public InputStream getInputStream() {
    return inputStream;
}



public String execute(){
	
	String resultHtml = null;
	debug(1,command);
	if(command.equals("insert")){
		resultHtml = insert();
	}else if(command.equals("delete")){
		resultHtml = delete();
	}else if(command.equals("initialmap")){	
		resultHtml = initialMap();
	}else if(command.equals("selectall")){	
		resultHtml = selectAll();
	}else if(command.equals("vendorlist")){
		resultHtml = getVendorList();
	}
	
	inputStream = new StringBufferInputStream(resultHtml);
	
	return SUCCESS;
}

private String insert(){
	VendorMap vendor = new VendorMap();
	return vendor.insert(rfqid,vendorid,typenotify,suggestdelvtime);
	 
}

private String delete(){
	return null;
}

private String initialMap(){
	return null;
}
private String selectAll(){
	return "selecting all";
}

private String getVendorList(){
	VendorMap vendor = new VendorMap();
	String retStr = "";
	 Map vlist = vendor.getVendorList();
	 JSONObject jobj = new JSONObject(vlist);
	 debug(1,jobj.toString());
	 Iterator itr = vlist.keySet().iterator();
	 while(itr.hasNext()){
		 String k = (String)itr.next();
		 String v = (String)vlist.get(k);
		 retStr+="<tr><key>"+k+"</key><val>"+v+"</val></tr>";
	 } 
	 return "<data>"+retStr+"</data>";
}

 
}