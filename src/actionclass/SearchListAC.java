package actionclass;

import java.io.InputStream;
import java.io.StringBufferInputStream;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.sql.rowset.CachedRowSet;

import org.apache.struts2.ServletActionContext;

import pojo.ListAttribute;


import com.opensymphony.xwork2.ActionSupport;

import dao.CrudDAO;
import dbconn.DBConnector;

/**
 * RELATEDPANEL may be put in screen_panel
 * @author Add
 *
 */
public class SearchListAC extends ActionSupport {

	private void debug(int priority, String s){
		if(priority > 0){
			System.out.println("SearchListAC:"+s);
		}
	}
	private InputStream inputStream;
    public InputStream getInputStream() {
        return inputStream;
    }
    private String recCountQuery;
    private int reccount;
    private int pagesize = 10;
    private int pageno = 0;
    
    
    public int getPagesize() {
		return pagesize;
	}


	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}


	public int getPageno() {
		return pageno;
	}


	public void setPageno(int pageno) {
		this.pageno = pageno;
	}


	/**
     * Related Panel concept is used because some fields in main details table say reqdate can be actually 
     * two dates from and todate in search panel. 
     * @param metadata
     * @return
     */
    public String createSearchQuery(HashMap metadata){
    	String searchQueryWhere = "";
    	String splWhereClause = "";
    	String searchQuery = "";
    	String joiner = " WHERE ";
    	HttpServletRequest request =  ServletActionContext.getRequest();
        DBConnector db = new DBConnector();
    	String scrname = request.getParameter("screenName");
        String panelName = request.getParameter("panelName");
        
    	Map<String,String> map = new HashMap(request.getParameterMap());
        map.remove(scrname);
        map.remove(panelName);
        
        Iterator itr = map.keySet().iterator();
        
       debug(1,map.toString());
        while(itr.hasNext()){
        	String fname = (String) itr.next();
        	 String val = request.getParameter(fname);
        	String SQL = 
            	"select dbcol,datatype from panel_fields where  scr_name='"+scrname+"' and " +
            			"panel_name='"+panelName+"' " +
            			"and fname='"+fname+"'";
        	debug(1,SQL);
        	CachedRowSet crs;
			try {
				crs = db.executeQuery(SQL);
			
	        	if(crs.next())	        	{
	        		String dbcol = crs.getString("dbcol");
	        		String datatype = crs.getString("datatype");
	        		
	        		if(null != datatype && !"".equalsIgnoreCase(datatype)){
	        			if("DATE".equalsIgnoreCase(datatype)){
	        				//MySQL????
	        				//Oracle 
	        				
	        			}
	        		}
	        		if(!"".equals(searchQueryWhere)){
	        			joiner = " AND ";
	        		}
	        		
	        		if(!val.equalsIgnoreCase("")){
	        			val = val.toUpperCase();
	        			searchQueryWhere +=joiner+"UPPER("+dbcol+") like '%"+val+"%'";
	        			joiner = " AND ";
	        		}
	        	}
	        	crs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
        }
        
        /////////////////////relatedpanel may be put in screen_panel ///////////////
        String SQL = 
        	"select relatedpanel from screen_panel  where   scr_name='"+scrname+"' and panel_name='"+panelName+"' ";
        debug(1,SQL);
        String relatedPanel = "";
        try {
			CachedRowSet crs = db.executeQuery(SQL);
			if(crs.next()){
				relatedPanel = crs.getString("relatedpanel");
				
			}
			crs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		String SQL1 = 
			"select TABLE_NAME,splwhereclause from screen_panel where   scr_name='"+scrname+"' and panel_name='"+relatedPanel+"'";
		 String tableName = "";
        debug(1,SQL1);
		 try {
			CachedRowSet crs = db.executeQuery(SQL1);
			while(crs.next()){
				tableName = crs.getString("TABLE_NAME");
				splWhereClause = crs.getString("splwhereclause");
			}
			crs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		String colquery ="";
		String SQL2 = 
			"select lblname,fname,idname,dbcol,datatype,classname,prkey,strquery from panel_fields where  scr_name='"+scrname+"' and panel_name='"+relatedPanel+"' order by ORDERNO";
		 debug(1,SQL2); 
		 
        try {
			CachedRowSet crs = db.executeQuery(SQL2);
		
			while(crs.next()){ 
				ListAttribute ls = new ListAttribute();
				ls.setClassname(crs.getString("classname"));
				ls.setDatatype(crs.getString("datatype"));
				ls.setDbcol(crs.getString("dbcol"));
				ls.setFname(crs.getString("fname"));
				ls.setIdname(crs.getString("idname"));
				ls.setLblname(crs.getString("lblname"));
				ls.setPrkey(crs.getString("prkey"));
				colquery = crs.getString("strquery");
				
				metadata.put(crs.getString("idname"), ls) ;
				if(colquery !=null && colquery.length() > 1){
					searchQuery +="("+colquery+") "+crs.getString("fname")+",";
				}else{
				    searchQuery +=crs.getString("dbcol")+" "+crs.getString("idname")+",";
				}
				colquery = "";
			}
			if(searchQuery.length() > 0){
				searchQuery = searchQuery.substring(0, searchQuery.length()-1);
			}
			crs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		searchQuery = "SELECT rownum rn,"+searchQuery + " FROM "+tableName+ searchQueryWhere ;
		
		CrudDAO cd = new CrudDAO();
		String predefQuery = "";
		
		/*
		 * predefquery will contain only the query upto TABLE(+)
		 *   + searchQueryWhere + splWhereClause
		 *   searchQueryWhere already took care of joiner
		 */
		predefQuery = cd.findPreDefQuery(scrname, relatedPanel);
		if(predefQuery!=null && predefQuery.length() > 0 ){
			searchQuery =predefQuery+" "+searchQueryWhere;//.replaceFirst("(?i:SELECT)", "SELECT rownum rn, ")+" "+searchQueryWhere;
			debug(1,"searching ffrom predef query");
		}
		
		
		if(null != splWhereClause && !"".equalsIgnoreCase(splWhereClause)){
			searchQuery+= joiner + splWhereClause;
			joiner = " AND ";
		}
		
		recCountQuery = searchQuery.replaceFirst(".*(?i:FROM)", "SELECT count('x') countrec FROM ");
		
    	
		CachedRowSet crs = null;
		String partialPageQuery = "";
		try {
			db = new DBConnector();
			crs = db.executeQuery(recCountQuery);
			int recfrom , recto;
			if(crs.next()){
				reccount = crs.getInt("countrec");
			}
			debug(1,"joiner="+joiner);
			if(reccount > pagesize){
				recfrom = pageno * pagesize;
				recto = recfrom + pagesize;
				partialPageQuery = " rownum > "+recfrom+" and rownum < "+recto;
				//Applying SQL hint Oracle specific also rownum is an oracle specific pseudocolumn
				searchQuery = "select * from (select /*+ FIRST_ROWS(n) */  rownum rnum,a.* from ("+searchQuery+") a where ROWNUM <="+recto+" ) where rnum > "+recfrom;
				
				//searchQuery = searchQuery.replaceFirst("(.*)(?i:WHERE)(.)", "$1 WHERE "+partialPageQuery +"  AND $2  ");
			}//else just use the original query without doing anything
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (crs != null) {
				try {
					crs.close();
				} catch (Exception e) {
				}
			}
		}
		debug(1,"searchQuery:"+searchQuery+"  \ncount query:"+recCountQuery);
		return searchQuery;
    }
    
    
    private String getResultXML(String query, HashMap metadata){
    	  String html = "";
    	  String tableHeader = "";
    	  String data = "";
        try {
			DBConnector db = new DBConnector();
			
			CachedRowSet crs = db.executeQuery(query);
			boolean firstItr=true;
				while(crs.next()){ 
					
					html += "\n<tr >";
					if(firstItr){
						tableHeader += "\n<tr >";
					}
					Iterator itr = metadata.keySet().iterator();
					 while (itr.hasNext()) {
						String fname = (String) itr.next();
						ListAttribute ls = (ListAttribute) metadata.get(fname);
						data  = crs.getString(fname);
						if(data ==null)data="";
						debug(0,crs.getString(fname));
						if(firstItr){
							tableHeader += "<th><div id="+fname+" style='display:none'>"+ls+"</div>"+ls.getLblname()+"</th>";
							
						}
						 
						html += "<td id="+fname+"> "+data+"</td>";
							
					}if(firstItr){
					 tableHeader += "</tr>";
					 firstItr= false;
					}
					 html += "</tr>";
				
				}
				
				String temphtml="";
				if(html== null || "".equals(html))
				{
					html="No data found";
				}else{
				
				int maxpageno = (int) Math.ceil((double)reccount / pagesize); 
				temphtml = "Page Size:<input style='width:30px;padding:0px' type=\"text\" value='"+pagesize+"' class=\"pagesize\" name=\"pagesize\" onchange=\"javascript:document.getElementById('pageno').value=0;search(this);\" />";
				temphtml+="<select class=\"pageno\" id='pageno' onchange=\"search(this);\">";
					for (int i = 0; i < maxpageno; i++) {
						if(i == pageno)
							temphtml+="<option value=\""+i+"\" selected>"+i+"</option>";
						else
							temphtml+="<option value=\""+i+"\">"+i+"</option>";	
					}
				 temphtml+="</select>";
				}
				
				html = temphtml+"<table border=1>"+tableHeader+html+"</table>";
			crs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
    	
    	
    	return html;
    }
    public String execute() throws Exception {
    	HashMap metadata = new LinkedHashMap();
    	//inputStream = new StringBufferInputStream("Hello World! This is a text string response from a Struts 2 Action.");
        String qry  = createSearchQuery(metadata);
        //debug(qry);
        String resXML  = getResultXML (qry,metadata); 
        inputStream = new StringBufferInputStream(resXML);
        
        return SUCCESS;
    }
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
