package businesslogic;

import java.util.HashMap;
import java.util.Map;

public class ApprovalReqBL implements BaseBL{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public HashMap preSubmitProcessBL(Map hm) {
		// TODO Auto-generated method stub
		
		debug(1,"pre submit Business logic");
		return (HashMap) hm;
	}
	
	private void debug(int priotiry, String s){
		if(priotiry > 0)
			System.out.println("RequestBL:"+s);
	}
	
	@Override
	public HashMap postRetreiveProcessBL(Map buslogHm) {
		debug(1,"Post Retrieve Business logic");
		return (HashMap) buslogHm;
	}

	@Override
	public HashMap preRetreiveProcessBL(Map buslogHm) {
		debug(1,"Pre Retrieve Business logic");
		return (HashMap) buslogHm;
	}

	@Override
	public HashMap processRequest(Map buslogHm) 
	{
		// TODO Auto-generated method stub
		debug(1,"Process Request Business logic");
		return (HashMap) buslogHm;
	}

	@Override
	public HashMap jsrpcProcessBL(Map buslogHm, String rpcid) {
		debug(1,"js RPC Business logic rpcid:"+rpcid);
		return (HashMap) buslogHm;
	}

	@Override
	public HashMap postDeleteProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		debug(1,"Post Delete Business logic");
		return (HashMap) buslogHm;
	}

	@Override
	public HashMap postInsertProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		debug(1,"Post Insert Business logic");
		return (HashMap) buslogHm;
	}

	@Override
	public HashMap preDeleteProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		debug(1,"Pre Delete Business logic");
		return (HashMap) buslogHm;
	}

	@Override
	public HashMap preInsertProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		debug(1,"Pre Insert Business logic");
		return (HashMap) buslogHm;
	}

	@Override
	public HashMap postSubmitProcessBL(Map hm) {
		// TODO Auto-generated method stub
		debug(1,"Post Submit Business logic");
		return (HashMap) hm;
	}

	@Override
	public HashMap postUpdateProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HashMap preUpdateProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		return null;
	}

}
