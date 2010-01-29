<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Print</title>
</head>
<script language="javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script language="javascript">
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

function populateData(){
	opener.populatePrintPage(this);
}
function populateCallbackValues(){
	alert("Args:"+arguments[0]);
	//$F("rfqid"),$F("itemtype"),$F("itemdesc"),$F("quantity")
	$("quotation").value; 
	var strBody = "Request for Quotation ID:"+arguments[0]+"<br />"+
	"Vendor ID:"+vendorid+"<br />"+
	"Item Type:"+arguments[1]+"<br />"+
	"Item Description:"+arguments[2]+"<br />"+
	"Item Quantity:"+arguments[3]+"<br />";
	$("quotation").innerHTML = $("quotation").innerHTML+"<br />"+strBody;
}
function fnPrint(){
	window.print();
}

function testjsrpc(){
	jQuery.ajax({
		   type: "GET",
		   url: "jsrpc.action?screenName=frmRequest&rpcid=hello",
		   success:  rpccallback

		 });
}
function rpccallback(parm){
	alert("hi frm jsrpc");
}
</script>
<body>
 <input type="button" value="test" onclick="populateData();" /> 
  <input type="button" value="test rpc" onclick="testjsrpc();" /> 
<div id="quotation">
</div>
</body>
</html>