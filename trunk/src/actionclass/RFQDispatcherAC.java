package actionclass;

import com.opensymphony.xwork2.ActionSupport;

public class RFQDispatcherAC extends ActionSupport{
private String vendorid;
private String rfqid;
private String itemtype;
private String itemdesc;
private String quantity;
private String vendoremail;
private String vendorName;


public String getRfqid() {
	return rfqid;
}

public void setRfqid(String rfqid) {
	this.rfqid = rfqid;
}

	public String getVendorid() {
	return vendorid;
}

public void setVendorid(String vendorid) {
	this.vendorid = vendorid;
}

	//action rfqsendemail
	public String sendemailrfqAction(){
		System.out.println("sendemailrfqAction");
		return SUCCESS;
	}
	
	//action  rfqsendprint
	public String printrfqAction(){
		
		return SUCCESS;
	}
}
