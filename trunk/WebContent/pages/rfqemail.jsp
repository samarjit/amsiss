<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html>
<head>
</head>
<style type="text/css">
 .headertxt{
 width:100%;
 }

 .bodytext{
 width:100%;	
 }
</style>
<script language="Javascript">
var vendorid= '${vendorid}';
function $(p){
	if(document.getElementById(p))
	return document.getElementById(p);
	return null;
}

function $F(p){
	if(document.getElementById(p))
	return document.getElementById(p);
	return null;
}
function fnEmailSend() {

	opener.rfqemailSent(vendorid);
}
</script>

<script language="javascript">
function populateData(){
	opener.populateEmailPage(this);
}
function populateCallbackValues(){
	alert("Args:"+arguments[0]);
	//$F("rfqid"),$F("itemtype"),$F("itemdesc"),$F("quantity")
	$("quotation").value 
	var strBody = "Request for Quotation ID:"+arguments[0]+"\n"+
	"Vendor ID:"+vendorid+"\n"+
	"Item Type:"+arguments[1]+"\n"+
	"Item Description:"+arguments[2]+"\n"+
	"Item Quantity:"+arguments[3]+"\n";
	$("bodytext").innerHTML = $("bodytext").innerHTML+"\n"+strBody;
}
function fnPrint(){
	window.print();
}
</script>
 <body>
 <input type="hidden" name="vendorid" value= "${vendorid }"/>
<table border="1" >
<tr>
	<td width="30%">To:</td>
	<td><input type="text" name="" value="" class="headertxt" /></td>
</tr>
<tr>
	<td>From:</td>
	<td><input type="text" name="ams@nucleussoftware.com" value="" class="headertxt"  /></td>
</tr>
<tr>
	<td>CC:</td>
	<td><input type="text" name="" value="" class="headertxt" /></td>
</tr>
<tr>
	<td>Subject</td>
	<td><input type="text" name="" value="Request for quotation" class="headertxt" /></td>
</tr>
<tr>
	<td colspan="2">
		<textarea id="bodytext" rows="6" cols="70">
		Nucleus Software requires a quotation for the following items \n
		from 
		 
		</textarea>
		<div id="quotation">
		</div>
	</td>
	
</tr>
</table>
 
 <input type="button" value="Send" onclick="fnEmailSend();" /> 
  <input type="button" value="test" onclick="populateData();" />  
 </body>
</html>
