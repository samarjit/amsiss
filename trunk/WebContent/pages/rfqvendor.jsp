<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
Vendor List: 
<select name="rfqvendorlist" id="rfqvendorlist">
	<option>vendor 1</option>
	<option>vendor 2</option>
</select>
Type of Notification
<input type="text" name="typenotify" />,
Suggested Delivery Time
<input type="text" name="suggestdelvtime" /> 
<button onclick="insertVendor();">Add</button>
<br /> 
<s:property value="vendorList" />
  <!-- s:select label="Select Day" 
    name="vendorList" 
    headerKey="1"
    headerValue="-- Please Select --"
    list="vendorList" 
    / -->
<div id="vendorlist">
</div>