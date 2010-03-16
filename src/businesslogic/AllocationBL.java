package businesslogic;

import java.util.HashMap;
import java.util.Map;

import javax.sql.rowset.CachedRowSet;

import dbconn.DBConnector;
import dto.PrepstmtDTOArray;
import dto.PrepstmtDTO.DataType;

public class AllocationBL implements BaseBL{
	
 
	private void debug(int priority, String s){
		if(priority>-1){
			System.out.println("AllocationBL:"+s);
		}
	}
	public String getParameter(Map buslogHm, String paramName){
		String[] tmp = (String[]) buslogHm.get(paramName);
		String parameter = (String)(tmp[0]);
		return parameter;
	}
	
	@Override
	public HashMap jsrpcProcessBL(Map buslogHm, String rpcid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HashMap postDeleteProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HashMap postInsertProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HashMap postRetreiveProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HashMap postSubmitProcessBL(Map hm) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HashMap postUpdateProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		return null;
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

	@Override
	public HashMap preRetreiveProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HashMap preSubmitProcessBL(Map hm) {
		int res = -1;
		try {
			DBConnector db = new DBConnector();
			String data = getParameter(hm,"passedonvalues"); 
			String data2 = getParameter(hm,"allocid"); 
			debug(1,data+"   "+data2);
			String SQL = " update AMS_REQUEST set STATUS='RESOLVED'  where reqid=? ";
			PrepstmtDTOArray  prepar = new PrepstmtDTOArray(); 
			prepar.add(DataType.STRING, data);
			
			//res = db.executePreparedUpdate(SQL, prepar);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			 
		}
		return null;
	}

	@Override
	public HashMap preUpdateProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HashMap processRequest(Map buslogHm) {
		// TODO Auto-generated method stub
		return null;
	}

}
