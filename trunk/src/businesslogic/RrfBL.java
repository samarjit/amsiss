package businesslogic;

import java.util.HashMap;
import java.util.Map;

import javax.sql.rowset.CachedRowSet;

import dbconn.DBConnector;
import dto.PerpstmtDTOArray;
import dto.UserDTO;
import dto.PrepstmtDTO.DataType;

public class RrfBL implements BaseBL{

	private void debug(int priority, String s) {
		if(priority > -1){
			System.out.println("RrfBL:"+s);
		}
	}
	
	@Override
	public HashMap activitySubmit(Map hm) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HashMap jsrpcProcessBL(Map buslogHm, String rpcid) {		
		return (HashMap) buslogHm;
	}

	@Override
	public HashMap postRetreiveProcessBL(Map buslogHm) {
		debug(1, "I am in RRF post process");
		return (HashMap)buslogHm;
	}

	@Override
	public HashMap preRetreiveProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HashMap processRequest(Map buslogHm) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	/**
	 * update the status of quotation back to NEW
	 * 
	 */
	public HashMap postDeleteProcessBL(Map buslogHm) {
		
		String[] delquotarr = (String[]) buslogHm.get("quotationid");
		if(delquotarr == null)
			return (HashMap) buslogHm;
		String quotationid = (String)(delquotarr[0]);
		debug(1, quotationid);
		String SQL = "update ams_quotation set qt_status='NEW' where qt_id= ? ";

		CachedRowSet crs = null;
		try {
			DBConnector db = new DBConnector();
			PerpstmtDTOArray arPrepstmt = new PerpstmtDTOArray();
			arPrepstmt.add(DataType.STRING, quotationid);			
			debug(1,arPrepstmt.toString(SQL));

			crs = db.executePreparedQuery(SQL, arPrepstmt );
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			if (crs != null) {
				try {
					crs.close();
				} catch (Exception e) {
				}
			}
		}
		return (HashMap)buslogHm;
	}

	@Override
	/**
	 * update the status of quotation to RRFCREATED
	 * 
	 */
	public HashMap postInsertProcessBL(Map buslogHm) {
		
		String[] quotarr = (String[]) buslogHm.get("quotationid"); 
		if(quotarr == null){
			return (HashMap)buslogHm;
		}
		String quotationid = (String)(quotarr[0]);
		debug(1, quotationid);
		String SQL = "update ams_quotation set qt_status='RRFCREATED' where qt_id= ? ";

		CachedRowSet crs = null;
		try {
			DBConnector db = new DBConnector();
			PerpstmtDTOArray arPrepstmt = new PerpstmtDTOArray();
			arPrepstmt.add(DataType.STRING, quotationid);			
			debug(1,arPrepstmt.toString(SQL));

			crs = db.executePreparedQuery(SQL, arPrepstmt );
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			if (crs != null) {
				try {
					crs.close();
				} catch (Exception e) {
				}
			}
		}		
		return (HashMap) buslogHm;
	}

	@Override
	public HashMap preDeleteProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HashMap preInsertProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		return null;
	}

}
