<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% response.setHeader("Pragma","no-cache");
  response.setDateHeader("Expires",0);
  response.setHeader("Cache-Control","no-cache");
%>
 <%@ taglib prefix="s" uri="/struts-tags" %>  
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script language="javascript" src="<%=request.getContextPath() %>/js/json2.js"></script>
<script language="javascript" src="<%=request.getContextPath() %>/js/encoder.js"></script>
<script language="JavaScript" src="<%=request.getContextPath() %>/js/commonjs.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/jquery-ui-1.7.2.custom.css" type="text/css" />
<script language="JavaScript" src="<%=request.getContextPath()%>/js/commonjs.js"></script>
<script language="JavaScript" src="<%=request.getContextPath()%>/js/frmPO.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 14px;
}
-->
</style>

<script language="javascript">
var screenName='frmPO';
var jsrpcurlpart= "<%=request.getContextPath()%>/jsrpc.action";
var poid= '<%=request.getParameter("poid")%>';
var qid= '<%=request.getParameter("qid")%>';
var actionid = '<%=request.getParameter("doString")%>';
var wflid = '<%=request.getParameter("wflid")%>';
var applicationid = '<%=request.getParameter("appid")%>';
var vendorid = '<%=request.getParameter("vendorid")%>';
var url = '<%=request.getContextPath()%>';
</script>
</head>

<body onload="loadPO()">
<img src="<%=request.getContextPath()%>/css/images/nuc_logo1.jpg" alt="Nuclues Software"/>
&nbsp;
&nbsp;
<table width="100" border="0" align="right">
<tr></tr>
<tr>
  <th scope="col"><label>
    <input type="button" value="Print" onClick="window.print()">
  </label></th>
   <th scope="col"><label>
    <input type="button" value="Send PO" onClick="sendPO()">
  </label></th>
</tr>
</table>
<table width="461" align="center">
  <tr>
    <p><font size="15">Purchase Order</font></p></th>
  </tr>
</table>
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="307" height="77" border="0">
  <tr>
    <td width="286" scope="col"><strong>Nucleus Software Solutions Pte. Ltd</strong></td>
  </tr>
  <tr>
    <td><p>300, Tampines Avenue 5 #05-05 Tampines Junction
   
    <em>Singapore</em> - 529653</p></td>
  </tr>
</table>
<br>
&nbsp;
&nbsp;
<table width="500" >
  <tr>
    <td width="87" scope="col"><strong>Vendor &nbsp;</strong></td>
    <td width="397" scope="col"><div id="vendorname"><strong></strong></div></td>
  </tr>
  <tr>
    
    <td><div id="vendoraddr"></div></td>
  </tr>
</table>
&nbsp;
&nbsp;
<table width="500">
  <tr>
    <td width="146" scope="col"><strong>Purchase Order ID &nbsp;
    </strong></td>
    <td width="338" scope="col"><div id="poid"></div></td>
  </tr>
  <tr>
    <td><strong>Date &nbsp;</strong></td>
    <td><div id="curdate"></div></td>
  </tr>
</table>
&nbsp;
&nbsp;
<table width="500" border="0">
  <tr>
    <td width="146" scope="col"><strong>Quotation ID &nbsp;</strong></td>
    <td width="344" scope="col"><div id="quotationid"></div></td>
  </tr>
  <tr>
    <td><strong>Quotation Reference &nbsp;</strong></td>
    <td><div id="quotationref"></div></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="539" border="0">
  <tr>
    <th width="92" scope="col">Item ID &nbsp;</th>
    <th width="133" scope="col">Description &nbsp;</th>
    <th width="62" scope="col">Quantity &nbsp;</th>
    <th width="119" scope="col">Unit Price &nbsp;</th>
    <th width="111" scope="col">Line Total Price &nbsp;</th>
  </tr>
  <tr>
    <td align="center"><div id="itemid"></div></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <td align="center"><div id="desc"></div></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <td align="center"><div id="qty"></div></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <td align="center"><div id="unitprice"></div></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <td align="center"><div id="linetotal"></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><strong>Currency type &nbsp;</strong></td>
    <td><div id="curtype"></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><strong>Discount &nbsp;</strong></td>
    <td><div id="discount"></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><strong>MISC &nbsp;</strong></td>
    <td><div id="misc"></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><strong>Total Amount &nbsp;</strong></td>
    <td><div id="totalamt"></div></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="500" border="0">
  <tr>
    <th width="80" scope="col">Comments &nbsp;</th>
    <td width="410" scope="col"><div id="comments"></div></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="500" border="0">
  <tr>
    <td width="110" scope="col"><strong>Authorized By &nbsp;</strong></td>
    <td width="380" scope="col">____________________________________</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>Date &nbsp;</strong></td>
    <td>_________________</td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>

</body>
</html>