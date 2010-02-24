package businesslogic;

import java.util.HashMap;
import java.util.Map;

import javax.sql.rowset.CachedRowSet;

import oracle.jdbc.util.Login;

import crud.InsertData;

import dbconn.DBConnector;
//import dto.PerpstmtDTOArray;
import dto.PrepstmtDTOArray;

import dto.UserDTO;
import dto.PrepstmtDTO.DataType;
import java.util.Map;
import java.util.Map.Entry;

public class ApprovalRrfBL implements BaseBL{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Map session;
	
	
	
	@Override
	public HashMap preSubmitProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		System.out.println("In rrf submit");
		
		String[] apprarr = (String[]) buslogHm.get("approve");
		if(apprarr != null){			
			String approve = (String)(apprarr[0]);
			if(approve.equals("true")){
							
				String[] rrfidarr = (String[]) buslogHm.get("rrfid");
				if(rrfidarr == null)
					return (HashMap) buslogHm;
				String rrfid = (String)(rrfidarr[0]);
				String RRFSQL = "update ams_rrf set rrf_status='APPROVED' where rrf_id=? ";

				CachedRowSet rrfcrs = null;
				try {
					DBConnector db = new DBConnector();
					PrepstmtDTOArray arPrepstmt = new PrepstmtDTOArray();
					arPrepstmt.add(DataType.STRING, rrfid);			
					debug(1,arPrepstmt.toString(RRFSQL));

					rrfcrs = db.executePreparedQuery(RRFSQL, arPrepstmt );
				}catch (Exception e) {
					e.printStackTrace();
				}finally {
					if (rrfcrs != null) {
						try {
							rrfcrs.close();
						} catch (Exception e) {
						}
					}
				}
				//buslogHm.put("nextAction", "CreateRRF");
			}						
		}					
		else{
			
			String approve = (String)(apprarr[0]);
			if(approve.equals("true")){
							
				String[] rrfidarr = (String[]) buslogHm.get("rrfid");
				if(rrfidarr == null)
					return (HashMap) buslogHm;
				String rrfid = (String)(rrfidarr[0]);
				String RRFSQL = "update ams_rrf set rrf_status='REJECTED' where rrf_id=? ";

				CachedRowSet rrfcrs = null;
				try {
					DBConnector db = new DBConnector();
					PrepstmtDTOArray arPrepstmt = new PrepstmtDTOArray();
					arPrepstmt.add(DataType.STRING, rrfid);			
					debug(1,arPrepstmt.toString(RRFSQL));

					rrfcrs = db.executePreparedQuery(RRFSQL, arPrepstmt );
				}catch (Exception e) {
					e.printStackTrace();
				}finally {
					if (rrfcrs != null) {
						try {
							rrfcrs.close();
						} catch (Exception e) {
						}
					}
				}
				//buslogHm.put("nextAction", "CreateRRF");
			}
		}
			
			
			//update the status of rrf.
			/*String[] rrfidarr = (String[]) buslogHm.get("rrfid");
			if(rrfidarr == null)
				return (HashMap) buslogHm;
			String rrfid = (String)(rrfidarr[0]);
			debug(1, rrfid);
			String SQL = "update ams_rrf set rrf_status='PENDAPPROVAL' where rrf_id=? ";

			CachedRowSet crs = null;
			try {
				DBConnector db = new DBConnector();
				PrepstmtDTOArray arPrepstmt = new PrepstmtDTOArray();
				arPrepstmt.add(DataType.STRING, rrfid);			
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
		}*/
		//send mail to approver - Not Working--
		//boolean res = true;
		/*InitialContext ic;
		String snName = "java:comp/env/mail/MyMailSession";
		Session session = null;		
		try {
			ic = new InitialContext();
			session = (Session) ic.lookup(snName);
		} catch (Exception e) {
			debug(5, "Exception: JNDI failed!");
		}
		if (session == null) {
			debug(0, "Using non JNDI way");
			Properties props = System.getProperties();
			props.put("mail.from", "admin@hp.com");
			session = Session.getInstance(props, null);
		}
		Message msg = new MimeMessage(session);
		try {
			msg.setSubject("RRF For approval");
			msg.setSentDate(new Date());
			msg.setFrom();
			 
			msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(
					"mgr@mydomain.com", false));
			msg.setContent("RRF for approval","text/html");
			Transport.send(msg);

			debug(1, "Email send to:" + "mgr@mydomain.com" + msg.getSubject() + " from:"
					+ "admin@mydomain.com" + " sub:" + msg.getSubject());
		} catch (Exception e) {
			debug(5, "Exception in sending mail!");
			e.printStackTrace();
			//res = false;
		}		*/
		
		return (HashMap)buslogHm;	
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
		
		System.out.println("To check the manager id with the login user id--->preretrieve");		
		
		return (HashMap) buslogHm;
	}

	@Override
	public HashMap processRequest(Map buslogHm) 
	{
		// TODO Auto-generated method stub
		debug(1,"Process Request Business logic");
		System.out.println("Process Request in Business logic");
		return (HashMap) buslogHm;
	}

	@Override
	public HashMap jsrpcProcessBL(Map buslogHm, String rpcid) 
	{
		System.out.println("Start of jsrpcProcessBL..");
		debug(0,"hash map argument:"+buslogHm);
		if("".equals(rpcid) )
		{
			buslogHm.put("error", "RPC not found");
		}
		else if("purchaseorder".equals(rpcid))
		{
		
			//update the status of rrf.
			String[] rrfidarr = (String[]) buslogHm.get("rrfid");
			if(rrfidarr == null)
				return (HashMap) buslogHm;
			String rrfid = (String)(rrfidarr[0]);
			System.out.println("RRF ID>>>"+rrfid);
		
			InsertData insert = new InsertData();
			String autogenId =insert.getNewAppId();
		    //String poid=autogenId;
			System.out.println("Autogenerate ID"+autogenId);
			//debug(1, rrfid);
			String SQL = "INSERT INTO AMS_PO (PO_ID, PO_RRF_ID, PO_DATE, PO_STATUS) VALUES (autogenId, rrfid, SYSDATE, 'SEND')";
			
			CachedRowSet crs = null;
			try {
					 DBConnector db = new DBConnector();
					 PrepstmtDTOArray arPrepstmt = new PrepstmtDTOArray();
					 arPrepstmt.add(DataType.STRING, autogenId);		
					 debug(0,arPrepstmt.toString(SQL));
				     crs = db.executePreparedQuery(SQL, arPrepstmt);
							    
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
		}
		else if("getmanagerid".equals(rpcid))
		{
			UserDTO usr = (UserDTO) buslogHm.get("userDTO");
			String userid = usr.getUserid();
			System.out.println("User ID>>>"+userid);
			
		}
		
		System.out.println("end of jsrpcprocessBL");
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
		System.out.println("Post Insert BL......testing...");
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
