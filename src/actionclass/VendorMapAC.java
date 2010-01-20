package actionclass;

import java.io.InputStream;
import java.io.StringBufferInputStream;

import com.opensymphony.xwork2.ActionSupport;

public class VendorMapAC extends ActionSupport{
private String mode;
private String command;
private String rfqid;
private InputStream inputStream;

public String getMode() {
	return mode;
}
public void setMode(String mode) {
	this.mode = mode;
}
public String getCommand() {
	return command;
}
public void setCommand(String command) {
	this.command = command;
}
public String getRfqid() {
	return rfqid;
}
public void setRfqid(String rfqid) {
	this.rfqid = rfqid;
}
public InputStream getInputStream() {
    return inputStream;
}



public String execute(){
	
	String resultHtml = null;
	if(command.equals("insert")){
		resultHtml = insert();
	}else if(command.equals("delete")){
		resultHtml = delete();
	}else if(command.equals("initialmap")){	
		resultHtml = initialMap();
	}else if(command.equals("selectall")){	
		resultHtml = selectAll();
	}
	
	inputStream = new StringBufferInputStream(resultHtml);
	
	return SUCCESS;
}

private String insert(){
	return null;
}

private String delete(){
	return null;
}

private String initialMap(){
	return null;
}
private String selectAll(){
	return null;
}

}
