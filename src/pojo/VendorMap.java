package pojo;

import java.util.Map;

import dao.VendorMapDAO;

public class VendorMap {
	public void debug(int priority, String s){
		s+="VendorMap:"+s;
		if(priority >0)
		System.out.println(s);
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	public String insert(String rfqid, String vendorid, String typenotify, String suggestdelvtime) {
		VendorMapDAO vdao = new VendorMapDAO();
		return vdao.insert(rfqid,vendorid,typenotify,suggestdelvtime);
		 
	}

	public Map getVendorList() {
		VendorMapDAO vdao = new VendorMapDAO();
		return vdao.getVendorList();
	}

}
