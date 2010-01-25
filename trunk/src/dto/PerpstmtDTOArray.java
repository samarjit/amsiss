package dto;

import java.util.ArrayList;

public class PerpstmtDTOArray    {
private ArrayList<PrepstmtDTO> ardto =null;

public ArrayList<PrepstmtDTO> getArdto() {
	return ardto;
}
public PerpstmtDTOArray(){
	ardto = new ArrayList<PrepstmtDTO>();
}
public void add( PrepstmtDTO.DataType dt,String data){
	ardto.add(new PrepstmtDTO(dt,data));	
}
public String	toString(String SQL){
	String retval = "PerpstmtDTOArray:";
	String[] sqlar = SQL.split("\\?");
	int i =0 ;
	for ( i =0 ;i< ardto.size();i++) {
		PrepstmtDTO itr =  ardto.get(i);
		retval = retval + sqlar[i] +" '"+itr.getData() +"'";
	}
	retval = retval + sqlar[i];
	return retval;
}


}
