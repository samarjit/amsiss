package businesslogic;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.naming.InitialContext;
import javax.sql.rowset.CachedRowSet;

import crud.InsertData;

import dbconn.DBConnector;
import dto.PrepstmtDTOArray;
import dto.UserDTO;
import dto.PrepstmtDTO.DataType;

public class DnBL implements BaseBL{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private void debug(int priority, String s) {
		if(priority > -1){
			System.out.println("DnBL:"+s);
		}
	}
	
	@Override
	public HashMap jsrpcProcessBL(Map buslogHm, String rpcid) 
	{		
		System.out.println("inside the jsrpcProcessBL>>>");
		
//------------------------------Cancel delivery note-----------------------------
		System.out.println("rpc id>>>"+rpcid);
		
		if ("cancel".equals(rpcid))
		{
				System.out.println("cancel in if statement>>>>");
			    //String cancel = (String)(cancelarr[0]);
				String[] dnidarr = (String[]) buslogHm.get("dnid");
				System.out.println("dnid array>>"+dnidarr);
				if(dnidarr == null)  { return (HashMap) buslogHm; }
				String dnid = (String)dnidarr[0];
				System.out.println("dnid"+dnid);
				String SQLCancelDn = "update ams_dn set dn_status='CANCELLED' where dn_id=? ";

				//CachedRowSet cancelcrs = null;
				int i=0;
				try {
					DBConnector db = new DBConnector();
					PrepstmtDTOArray arPrepstmt = new PrepstmtDTOArray();
					arPrepstmt.add(DataType.STRING, dnid);			
					debug(0,arPrepstmt.toString(SQLCancelDn));
					i = db.executePreparedUpdate(SQLCancelDn, arPrepstmt);
					System.out.println("Inside the cancel delivery note of DNBL>>>>"+i);
					
					}catch (Exception e) {
					e.printStackTrace();
					}finally {
					
					
					}
				//buslogHm.put("nextAction", "CreateDN");
	}	
		else {System.out.println("cancel in else statement>>>");}
		
		//---------------------------return-------------------------------
		
		return (HashMap) buslogHm;
	}

	@Override
	public HashMap postRetreiveProcessBL(Map buslogHm) {
		
		System.out.println("Post Retrieve>>>>>>>>>>>>>");
		
		
		
		
		//---------------------return-----------------------------------------		
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
	 * update the status of rrf to PENDAPPROVAL
	 * 
	 */
	public HashMap preSubmitProcessBL(Map buslogHm) {
		
		System.out.println("Pre submit>>>>>");
		return (HashMap)buslogHm;		
	}


	@Override
	/**
	 * update the status of quotation back to NEW
	 * 
	 */
	public HashMap postDeleteProcessBL(Map buslogHm) {
		
	
		return (HashMap)buslogHm;
	}

	@Override
	/**
	 * update the status of quotation to RRFCREATED
	 * 
	 */
	public HashMap postInsertProcessBL(Map buslogHm) 
	{
        System.out.println("Inside Pre Insert Process BL>>>>>");
		System.out.println("BuslogHm Value1>>>"+buslogHm.get("itemid"));
		System.out.println("BuslogHm Value1>>>"+buslogHm.get("itemquantity"));
		System.out.println("BuslogHm Value1>>>"+buslogHm.get("dnpurchaseorderid"));
		
		String[] itemidarr = (String[])buslogHm.get("itemid");
		String itemid=(String)itemidarr[0];
		System.out.println("Item ID"+itemid);
		
		String[] itemqtyarr=(String[])buslogHm.get("itemquantity");
		String itemqtyst=(String)itemqtyarr[0];
		int itemquantity=Integer.parseInt(itemqtyst);
		System.out.println("Item Quantity"+itemquantity);
		
		String[] dnidarr = (String[])buslogHm.get("dnpurchaseorderid");
		String dnid=(String)(dnidarr[0]);
		System.out.println("DN ID "+dnid);
		
		String SQLSelAsset="select asset_id,asset_name from AMS_ASSET";
		CachedRowSet crs=null;
		int flag=0;
		try {
			
			DBConnector db = new DBConnector();
			PrepstmtDTOArray arPrepstmt1 = new PrepstmtDTOArray();
			//arPrepstmt1.add(DataType.STRING, itemid);			
			debug(0,arPrepstmt1.toString(SQLSelAsset));
			crs = db.executePreparedQuery(SQLSelAsset, arPrepstmt1);
			
		while(crs.next())
			{
				System.out.println("Asset ID"+crs.getString("asset_id"));
				if(itemid.equals((String)crs.getString("asset_id")))
			{
							
					//String SQLUpdAsset = "update AMS_ASSET set ASSET_QUANTITY=ASSET_QUANTITY+ " +itemquantity+ " where ASSET_ID=? ";
					String SQL = "update AMS_ASSET set ASSET_QUANTITY=? where ASSET_ID=? ";
										
					int i = 0;
					//CachedRowSet crs2 = null;
					try 
					{
						DBConnector db1 = new DBConnector();
						PrepstmtDTOArray arPrepstmt2 = new PrepstmtDTOArray();
						arPrepstmt2.add(DataType.INT, itemqtyst);	
						arPrepstmt2.add(DataType.STRING, itemid);			
						debug(0,arPrepstmt2.toString(SQL));
						i = db1.executePreparedUpdate(SQL, arPrepstmt2 );
						System.out.println(">>>i>>>"+i);
								
					}catch (Exception e) {
						e.printStackTrace();
					}finally {  }
					continue;
			}//for if statement
				
		else if(!itemid.equals((String)crs.getString("asset_id")))	
		{
			//System.out.println("Please add a new item in Asset table");
			flag=1;
		}	
			//	{
				
					//System.out.println("Asset id !=item id>>>>");
					
					//--------------Need to show the create asset screen to the user
					
					/*InsertData insert = new InsertData();
					String autogenId =insert.getNewAppId();
				    //String poid=autogenId;
					System.out.println("Autogenerate ID"+autogenId);
					//debug(1, rrfid);
					String SQLInsertAsset = "";
					CachedRowSet crs1 = null;
					try {
							 DBConnector db2 = new DBConnector();
							 PrepstmtDTOArray arPrepstmt = new PrepstmtDTOArray();
							 arPrepstmt.add(DataType.STRING, autogenId);		
							 debug(0,arPrepstmt1.toString(SQLInsertAsset));
						     crs1 = db2.executePreparedQuery(SQLInsertAsset, arPrepstmt);
									    
						}catch (Exception e) {
						e.printStackTrace();
					}finally {
								
							}*/
			
					
			//	}// for else if statement
				
		   }//for while loop
		    }catch (Exception e) {
			 e.printStackTrace();
		   }finally {}  // for try/catch			
		if(flag==1){System.out.println("Please add a new item in Asset table");}
		
		//----------------------------to change the status of request----------------------------------
			
	
		//String SQLselect = "select DN_PO_ID from AMS_DN where DN_ID='527'";
		
		String SQLUpdReqStatus="update AMS_REQUEST REQ set STATUS='Pending Allocation'  where REQID=(SELECT REQ.REQID FROM AMS_REQUEST REQ,AMS_RRF RRF,AMS_PO PO,AMS_DN DN WHERE DN.DN_PO_ID=PO.PO_ID AND RRF.RRF_ID=PO.PO_RRF_ID AND RRF.RRF_REQ_ID=REQ.REQID AND DN.DN_PO_ID=?)"; 
		
		//String SQLUpdReqStatus="SELECT REQ.REQID FROM AMS_REQUEST REQ,AMS_RRF RRF,AMS_PO PO,AMS_DN DN WHERE DN.DN_PO_ID=PO.PO_ID"+
	//	"AND RRF.RRF_ID=PO.PO_RRF_ID AND RRF.RRF_REQ_ID=REQ.REQID AND DN.DN_ID=? ";
		
		//String query5 = "select REQID REF_REQID from AMS_REQUEST where empid=? AND reqdate > (SELECT to_char(sysdate - numtoyminterval(6, 'MONTH')) FROM dual)";
		
		int i2 = 0;
		//CachedRowSet crs = null;
		try 
		{
			DBConnector db3 = new DBConnector();
			PrepstmtDTOArray arPrepstmt1 = new PrepstmtDTOArray();
			arPrepstmt1.add(DataType.STRING, dnid);			
			debug(0,arPrepstmt1.toString(SQLUpdReqStatus));
			i2 = db3.executePreparedUpdate(SQLUpdReqStatus, arPrepstmt1);
			System.out.println("value of i>>>>"+i2);
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
		
		}
				
		//-----------------------------return------------------------------------
		return (HashMap) buslogHm;
	}

	@Override
	public HashMap preDeleteProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HashMap preInsertProcessBL(Map buslogHm) {
		
		
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
	public HashMap preUpdateProcessBL(Map buslogHm) {
		// TODO Auto-generated method stub
		return null;
	}

}
