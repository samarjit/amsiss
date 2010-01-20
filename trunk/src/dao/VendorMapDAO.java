package dao;

import java.util.HashMap;
import java.util.Map;

import javax.sql.rowset.CachedRowSet;
import dbconn.DBConnector;

public class VendorMapDAO {
	public void debug(int priority, String s){
		s+="VendorMapDAO:"+s;
		if(priority >0)
		System.out.println(s);
	}

	public String insert(String rfqid, String vendorid, String typenotify, String suggestdelvtime) {
		DBConnector db = new DBConnector();
		String retStr = "Record Added successfully";
		String SQL = "insert into AMS_RFQ_VENDOR_MAP(rfqid,vendorid,type_notify,INDV_STATUS,SUGGEST_DLV_TIME) " +
		"values("+rfqid+","+vendorid+","+typenotify+",'NotAttended',"+suggestdelvtime+") ";
		CachedRowSet crs = null;
		try {
			 debug(1,SQL);
			db.executeUpdate(SQL);
			debug(1,"insert did not fail");
		} catch (Exception e) {
			e.printStackTrace();
			retStr = "Record add failed";
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

	public Map getVendorList() {
		CachedRowSet crs = null;
		String SQL = "select vendor_id, vendor_name, vendor_rating, vendor_status from AMS_VENDOR ";
		Map vlist = new HashMap();
		try {
			DBConnector db = new DBConnector();
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
	
	
}
