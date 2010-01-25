package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.sql.rowset.CachedRowSet;
import dbconn.DBConnector;
import dto.PerpstmtDTOArray;
import dto.PrepstmtDTO.DataType;

public class VendorMapDAO {
	public void debug(int priority, String s){
		s="VendorMapDAO:"+s;
		if(priority >0-1)
		System.out.println(s);
	}

	public String insert(String rfqid, String vendorid, String typenotify, String suggestdelvtime) {
		DBConnector db = new DBConnector();
		String retStr = "SUCCESS";
//		String SQL = "insert into AMS_RFQ_VENDOR_MAP(rfqid,vendorid,type_notify,INDV_STATUS,SUGGEST_DLV_TIME) " +
//		"values('"+rfqid+"','"+vendorid+"','"+typenotify+"','NotAttended',"+suggestdelvtime+") ";
		String SQL = "insert into AMS_RFQ_VENDOR_MAP(rfqid,vendorid,type_notify,INDV_STATUS,SUGGEST_DLV_TIME) " +
		"values(?,?,?,'NotAttended',?) ";
		PerpstmtDTOArray prepar =  new PerpstmtDTOArray();
		prepar.add(DataType.STRING, rfqid);
		prepar.add(DataType.STRING, vendorid);
		prepar.add(DataType.STRING, typenotify);
		prepar.add(DataType.INT, suggestdelvtime);
		debug(1,prepar.toString(SQL));
		CachedRowSet crs = null;
		try {
			 debug(0,SQL);
			db.executePreparedUpdate(SQL, prepar );
			debug(0,"insert did not fail");
		} catch (Exception e) {
			e.printStackTrace();
			retStr = "FAILED";
			debug(0,"insert failed");
		} finally {
			if (crs != null) {
				try {
					crs.close();
				} catch (Exception e) {
				}
			}
		}

		
		return retStr;		
	}

	public Map getVendorList(String department) {
		
		CachedRowSet crs = null;
		String vendoridlist="";
		String SQL2 = "select vendor_id from ams_dept_vendor_map where dept_id ='"+department+"' ";
		
		if(department != null && !"".equals(department)){
			try {
				DBConnector db = new DBConnector();
				crs = db.executeQuery(SQL2);
				while(crs.next()){
					vendoridlist=vendoridlist+",'"+crs.getString("vendor_id")+"'";
				}
				if(vendoridlist.length() > 0 && vendoridlist.charAt(0) == ',')
				vendoridlist = vendoridlist.substring(1);
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
		}
		
		String SQL = "select vendor_id, vendor_name, vendor_rating, vendor_status from AMS_VENDOR ";
		debug(0,"specific vendoridlist :"+vendoridlist);
		if(vendoridlist.length() > 0){
			
			SQL = SQL + " where vendor_id in ("+vendoridlist+")";
		}
		Map vlist = new HashMap();
		try {
			DBConnector db = new DBConnector();
			debug(0,SQL);
			crs = db.executeQuery(SQL);
			while(crs.next()){
				vlist.put(crs.getString("vendor_id"),crs.getString("vendor_name"));
			 
			}
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
		return vlist;
	}

	public ArrayList<HashMap<String, String>> selectAll(String rfqid) {
		CachedRowSet crs = null;
		String SQL = "select vendor_id, vendor_name,b.TYPE_NOTIFY,b.INDV_STATUS,b.SUGGEST_DLV_TIME, vendor_rating, vendor_status from AMS_VENDOR a, AMS_RFQ_VENDOR_MAP b  where a.VENDOR_ID = b.VENDORID ";
		HashMap<String,String> vlist = null;//new HashMap<String, String>();
		ArrayList<HashMap<String,String>> arvlist = new ArrayList<HashMap<String,String>>();
		try {
			DBConnector db = new DBConnector();
			debug(0,SQL);
			crs = db.executeQuery(SQL);
			while(crs.next()){
				vlist = new HashMap<String, String>();
				vlist.put("vendor_id", crs.getString("vendor_id"));
				vlist.put("vendor_name",crs.getString("vendor_name"));
				vlist.put("TYPE_NOTIFY",crs.getString("TYPE_NOTIFY"));
				vlist.put("INDV_STATUS",crs.getString("INDV_STATUS"));
				vlist.put("SUGGEST_DLV_TIME",crs.getString("SUGGEST_DLV_TIME"));
				vlist.put("vendor_rating",crs.getString("vendor_rating"));
				vlist.put("vendor_status",crs.getString("vendor_status"));
				arvlist.add(vlist);
			}
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
		debug(0,arvlist.toString());
		return arvlist;
	}

	public String delete(String rfqid, String vendorid) {
		DBConnector db = new DBConnector();
		String retStr = "SUCCESS";
		String SQL = "delete from AMS_RFQ_VENDOR_MAP where rfqid = ? AND vendorid = ? ";

		PerpstmtDTOArray prepar =  new PerpstmtDTOArray();
		prepar.add(DataType.STRING, rfqid);
		prepar.add(DataType.STRING, vendorid);
		debug(1,prepar.toString(SQL));
		CachedRowSet crs = null;
		try {
			 debug(0,SQL);
			db.executePreparedUpdate(SQL, prepar );
			debug(0,"delete did not fail");
		} catch (Exception e) {
			e.printStackTrace();
			retStr = "FAILED";
			debug(0,"delete failed");
		} finally {
			if (crs != null) {
				try {
					crs.close();
				} catch (Exception e) {
				}
			}
		}

		
		return retStr;
	}

	public String initialMap(String rfqid, String department, String typenotify, String suggestdelvtime) {
		String retStr = "SUCCESS";
		DBConnector db = new DBConnector();
		PerpstmtDTOArray prepar =  new PerpstmtDTOArray();
		CachedRowSet crs = null;
		CachedRowSet crs2 = null;
		String SQLvendorid= " select vendor_id from ams_dept_vendor_map where dept_id =?  " +
				"minus " +
				"select  a.VENDOR_ID from AMS_VENDOR a, AMS_RFQ_VENDOR_MAP b  where a.VENDOR_ID = b.VENDORID AND rfqid =?";
			
		prepar.add(DataType.STRING, department);
		prepar.add(DataType.STRING, rfqid);
		
		try {
			crs = 	db.executePreparedQuery(SQLvendorid, prepar );
			while(crs.next()){
			
			String vendorid = crs.getString("vendor_id");
			
		String SQL = "insert into AMS_RFQ_VENDOR_MAP(rfqid,vendorid,type_notify,INDV_STATUS,SUGGEST_DLV_TIME) values( ?, " +
		"?, " +
		"?,'NotAttended', ?) ";
		
		
		PerpstmtDTOArray prepar2 =  new PerpstmtDTOArray();
		prepar2.add(DataType.STRING, rfqid);
		prepar2.add(DataType.STRING, vendorid);
		prepar2.add(DataType.STRING, typenotify);
		prepar2.add(DataType.INT, suggestdelvtime);
		
		
			
			debug(1,prepar.toString(SQL));
			 db.executePreparedUpdate(SQL, prepar2 );
			
		
			}
		} catch (Exception e) {
			e.printStackTrace();
			retStr = "FAILED";
		} finally {
			if (crs2 != null) {
				try {
					crs2.close();
				} catch (Exception e) {
				}
			}
			if (crs != null) {
				try {
					crs.close();
				} catch (Exception e) {
				}
			}
		}
		return retStr;
	}
	
	
}
