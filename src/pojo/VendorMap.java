package pojo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import dao.VendorMapDAO;

public class VendorMap {
	public void debug(int priority, String s){
		s="VendorMap:"+s;
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

	public Map getVendorList(String department) {
		VendorMapDAO vdao = new VendorMapDAO();
		return vdao.getVendorList(department);
	}

	public ArrayList<HashMap<String, String>> setlectAll(String rfqid) {
		VendorMapDAO vdao = new VendorMapDAO();
		return vdao.selectAll(rfqid);
	}

	public String delete(String rfqid, String vendorid) {
		VendorMapDAO vdao = new VendorMapDAO();
		return vdao.delete(rfqid, vendorid);
	}

	public String initialMap(String rfqid, String department, String typenotify, String suggestdelvtime) {
		VendorMapDAO vdao = new VendorMapDAO();
		return vdao.initialMap(rfqid,department,typenotify,suggestdelvtime);
	}

}
