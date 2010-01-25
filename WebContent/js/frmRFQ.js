function populate()
{
	//alert("This alert box was called with the onload event");	

	if((!(whereClause == ""))){
		var url=retriveurlpart+"?panelName=searchPanel&screenName="+screenName;	
		url=url+"&whereClause="+ whereClause;		
		//alert("In message: whereClause=" + whereClause);
		// prompt("url",url);	
		sendAjaxGet(url, requestCallBack);
	}	
	//alert("In populate");
}
var screenMode = "insert";

function clearWhereClause(){
	document.getElementById("panelFieldsWhereClause").Value = "";
}

function requestCallBack(p){
	//alert("Got from ajax:"+p);

	document.getElementById("retreivedetailsdiv").innerHTML = p;	
	panelsTable = document.getElementById("panelsdiv").getElementsByTagName("table");
	//alert(panelsTable.length);


	detailTable    = document.getElementById("retreivedetailsdiv").getElementsByTagName("table");

	for ( var i=0; i<detailTable.length ; i++)
	{
		//alert(detailTable[i].id);			
		if (detailTable[i].id == 'buttonPanel')
			continue;
		for(var k = 0; k<detailTable[i].rows[0].cells.length; k++) {			
			//comStr = detailTable[i].rows[0].cells[k].childNodes[0].innerText.split(',')[2];	 			

			comStr=jQuery.trim(jQuery(detailTable[i].rows[0].cells[k]).find("div").text()).split(',')[2];
			//alert(jQuery(detailTable[i].rows[0].cells[k]).find("div").text());
			comVal = jQuery.trim(jQuery(detailTable[i].rows[1].cells[k]).text());	  
			
			//comVal = detailTable[i].rows[1].cells[k].innerText;	  
			for(var l = 0; l<panelsTable.length; l++)
			{
				//alert(panelsTable[i].id);
				if (panelsTable[l].id == 'buttonPanel')
					continue;
				if(detailTable[i].id == panelsTable[l].id)
				{ 
/*					var input = panelsTable[l].getElementsByTagName("input");*/
					var query = jQuery(panelsTable[l]).find(" :input");
					var elem = 	jQuery(query);
				
					jQuery.each(elem, function(index, item) {
						
					 	if(item.id == comStr){
						 jQuery(item).val(comVal);
					 	}
					});
//					for( var m = 0 ; m < input.length; m++)
//					{
//						if(input[m].id == comStr)
//						{
//							//alert(comStr +"   "+comVal +"   " +panelsTable[l].id + " " + detailTable[i].id);
//							input[m].value = comVal;
//						}
//					}
				}
			}
		}
	}
	
	disable_fields();
	fnAdjustTableWidth();
	populateVendors();
	
	createVendorDropdownAjax();
	
}

function fnAdjustTableWidth() {
	var tdwidthar = new Array();
	var query = jQuery("#panelsdiv  table:first ").find("tr").eq(0).find("td ");


	var elem = 	jQuery(query);

	jQuery.each(query, function(index, item) {
		tdwidthar[index]  = jQuery(item).width();
	});

	var j = 0 ;
	var maxtd = tdwidthar.length;


	var tblar = document.getElementById("panelsdiv").getElementsByTagName("table") ;
	for (var i=0; i<tblar.length; i++) {
		query = jQuery(tblar[i]).find("tr").eq(0).find("td");
		elem = 	jQuery(query);

		jQuery.each(query, function(index, item) {
			jQuery(item).width(tdwidthar[j]);
			j++;
			if(maxtd == j)j=0;

		});

	}



}

function disable_fields(){
	panelsTable = document.getElementById("panelsdiv").getElementsByTagName("table");

	for(var i =0; i<panelsTable.length;i++){
		
	//	alert("panels "+ panelsTable[i].id);
		if (panelsTable[i].id == 'panelFields'){
//			
//		fields = panelsTable[i].getElementsByTagName("input");
//			for(var k = 0; k<fields.length; k++){
//			
//				fields[k].disabled = true;
//			
//			}
			var query = jQuery(panelsTable[i]).find(" :input");
			var elem = 	jQuery(query);
		
			jQuery.each(elem, function(index, item) {
				item.disabled = true;
			});
		
		}
	}
}

function insertData() {
	var dataTable = document.getElementById("panelsdiv").getElementsByTagName("table");
}


function reqSubmit() {
	
	prepareInsertData();
}

function reqSave() {
	//alert("in save ");	
	alert(inserturlpart);
	//alert("in savesdkgf ");	
	//var url=urlpart+"?panelName=searchPanel&screenName=frmRequest"+screenName;	
	
	if(screenMode == "insert"){
	var url=inserturlpart+"?panelName=searchPanel&screenName=frmRFQ";
	prompt("url",url);	
	url = url+ "&insertKeyValue="+ prepareInsertData();
	//prompt("url",url);
	//add key:vlaue to url
	sendAjaxGet(url, saveCallBack);

	}
	
	if(screenMode == "modify"){
		whereclause  = makeWhereClause();
		var url=updateurlpart+"?wclause="+whereclause+"&screenName=frmRFQ";
		prompt("url",url);	
		url = url+ "&insertKeyValue="+ prepareInsertData();

		//prompt("url",url);
		//add key:vlaue to url
		

		sendAjaxGet(url, saveCallBack);
		}
	
		
}

function deleteData(){
	
	whereclause  = makeWhereClause();
	var url=deleteurlpart+"?wclause="+whereclause+"&screenName=frmRequest";
	prompt("url",url);	
	alert("in update!!!!!!! url" +url);
	//prompt("url",url);
	//add key:vlaue to url
	

	sendAjaxGet(url, saveCallBack);
	
}

function saveCallBack(val) {
	//show success message 
	if(val < 0)alert("Error while saving! ");
	else alert("Successfully saved your request! ");
}


function KeyValue(a,b) {
	this.key=a;
	this.value=b;
}

function panelClass(a,b) {
	this.name = a;
	this.valuesar = b;
}

function replacer(key, value) {
	if (typeof value === 'number' && !isFinite(value)) {
		return String(value);
	}
	return value;
}


function prepareInsertData() {

	//alert("in prepare");
	//var array = {"panelFields1":{"empid":"9002","empname":"tutu","bdate":"12-10-2009"},"panelFields":{"empid":"9001","empname":"samarjit","bdate":"12-10-2009"}};
	var dataTable = document.getElementById("panelsdiv").getElementsByTagName("table");
	var pclass = new Array();
	

		//alert(dataTable.length);		
		for (var i=0; i<dataTable.length; i++) {
				
			var query = "#panelsdiv #" + dataTable[i].id + " :input";
			var requestar = new Array();
			//alert(query);
			var elem = 	jQuery(query); 
			var j = 0;
			jQuery.each(elem, function(index, item) {	
				//alert(j);
				requestar[j] = new KeyValue(item.id, item.value);				
				j++;						
			});
			
			pclass[i] = new panelClass(dataTable[i].id,requestar);					
		}	
		var k = new Object();
		k.json = pclass
		var myJSONText = JSON.stringify(k, replacer,"");
		alert(myJSONText );	
		return myJSONText;			
}


function updateData(obj){
	//obj.disabled = true;
	screenMode = "modify";
	//There will be only one table in search screen 'search div'
	//document.requestFrm.submit();
	listTable = document.getElementById("retreivedetailsdiv").getElementsByTagName("table")[0];

	panelsTable = document.getElementById("panelsdiv").getElementsByTagName("table");

	for(var m =0; m<panelsTable.length;m++){

		if (panelsTable[m].id == 'panelFields'){

				fields = panelsTable[m].getElementsByTagName("input");
			var query = jQuery(panelsTable[m]).find(" :input");
			var elem = 	jQuery(query);
			//alert("inside update panel panels " + fields.length);
			// for(var k = 0; k<fields.length; k++){
			jQuery.each(elem,function(k,fields){
				//alert("inside panel panels " + fields.id);
				for (i = 0; i <listTable.rows[0].cells.length ; i++ )
				{
					// alert(fields[k].id);
					
					if(jQuery(listTable.rows[0].cells[i]).find("div").text().split(',')[2] == fields.id){
						
						//alert(jQuery(listTable.rows[0].cells[i]).text())
						if(!(jQuery(listTable.rows[0].cells[i]).find("div").text().split(',')[6]  == 'Y')) {

							

							fields.disabled = false;
						}
					}

					//for date
					if(jQuery(listTable.rows[0].cells[i]).find("div").text().split(',')[2] == fields.id){
						if((jQuery(listTable.rows[0].cells[i]).find("div").text().split(',')[4] == 'DATE')) {


							fields.disabled = true;
						}
					} 
				}

			});

		}
	}



}



	 

function makeWhereClause(){
	 
	// alert("in make url,selectedIdx:"+selectedIdx);
	//There will be only one table in search screen 'search div'
	
	listTable = document.getElementById("retreivedetailsdiv").getElementsByTagName("table")[0];

	whereClause = "panelFields1WhereClause=";
	if(listTable != null){
		//poplate wher clause url
		var j=0;
		requestar = new Array();
		for (i = 0; i <listTable.rows[0].cells.length ; i++ )
		{  
			//alert(listTable.rows[0].cells[i].childNodes[0].innerText.split(',')[6]);
			if(jQuery("#retreivedetailsdiv").find(" table tbody tr th").eq(i).find(" div").text().split(',')[6]  == "Y") {
				name = jQuery("#retreivedetailsdiv").find(" table  tbody tr th").eq(i).find("div").text().split(',')[2];	 
				name = jQuery.trim(name);
				value = jQuery("#retreivedetailsdiv").find(" table tbody tr").eq(1).find(" td").eq(i).text();
				value = jQuery.trim(value);
				whereClause = whereClause + name + "!" + value + "~#";
				requestar[j] = new KeyValue(name, value);				
				j++;		
				//alert(jQuery("#retreivedetailsdiv table th:eq("+i+") div").text());
			}
		}
		var k = new Object();
		k.json = requestar;
		var myJSONText = JSON.stringify(k, replacer,"");
		
		whereClause = encodeURIComponent(myJSONText);//whereClause.replace(/(~#)$/, '');
		 
		 
		
	}
	
	return whereClause;	 

}


function submitactivity(){
	alert("here in submit activity")
	alert(wflcontrollerurl);
	var applicationid = jQuery("#panelsdiv #panelFields  input[id=reqid]").attr("value");
	alert(applicationid);
	var actionid =  jQuery("#panelsdiv #statusFields input[id=wflactionid]").attr("value");
	var wflid=jQuery("#panelsdiv #statusFields input[id=wflid]").attr("value");
	
	//document.getElementById("submitanchor").href //stealing from actionbutton.jsp its not the right way, if its coming from viewDetails this will be wrong anyway! 	
	location.href = wflcontrollerurl+"?action=true&doString="+actionid+"&wflid="+wflid+"&appid="+applicationid;
		
	}

function submitScreenFlowactivity(){
	alert("here in submit activity")
	alert(wflcontrollerurl);
	var applicationid = jQuery("#panelsdiv #panelFields  input[id=reqid]").attr("value");
	alert(applicationid);
	var actionid =  jQuery("#panelsdiv #statusFields input[id=wflactiondesc]").attr("value");
	var wflid=jQuery("#panelsdiv #statusFields input[id=wflid]").attr("value");
	
	//document.getElementById("submitanchor").href //stealing from actionbutton.jsp its not the right way, if its coming from viewDetails this will be wrong anyway! 	
	location.href = wflcontrollerurl+"?action=true&doString="+actionid+"&wflid="+wflid+"&appid="+applicationid;
		
	}

function populateVendors(){
	var url = ctxpath+"/vendormap.action?command=selectall"+"&rfqid="+document.getElementById("rfqid").value+"";
	//alert("populating:"+url);
	sendAjaxGet(url, popvendorcallback);
}
function deleteVendor(vendorid){
	var url = ctxpath+"/vendormap.action?command=delete"+"&rfqid="+document.getElementById("rfqid").value  +
			"&vendorid="+vendorid;
	//alert(url);
	sendAjaxGet(url, popvendorcallback);
}


/**
 * This method is called by cmd:selectall initial populate vendors and delete and insert mapall
 */
function popvendorcallback(parm){
	if(/^ERROR/.test(parm)){
		alert(parm.substring(6));
		return;
	}
	jQuery(document.getElementById("vendorlist")).html(parm);
	try {
	//alert("creating dynamic table");	
	var jsonob = eval(parm);
	var strTable = "<table ><tr><th>Vendor ID</th>" +
			"<th>Vendor Name</th>" +
			"<th>Type of notfication</th>" +
			"<th>Individual Status</th>" +
			"<th>Vendor Rating</th>" +
			"<th>Suggested Delivery Time</th>" +
			"<th>Delete Record</th></tr>";
	for ( var i = 0; i < jsonob.length; i++) {
		var obj = jsonob[i];
		strTable +="<tr><td>"+obj.vendor_id+"</td>";
		strTable +="<td>"+obj.vendor_name+"</td>";
		var type = obj.TYPE_NOTIFY.split("#");
		strTable +="<td>";
		if(type[0]!=null && isNumeric(type[0])){
			strTable +="<input type='checkbox' checked='checked' onclick='enableEmail(0,\""+obj.vendor_id+"\")'/><a href='javascript:emailRFQ(\""+obj.vendor_id+"\")' ><img src='"+ctxpath+"/css/images/email.gif' alt='print' />"+"</a>"+type[0];	
		}else{
			strTable +="<input type='checkbox' onclick='enableEmail(1,\""+obj.vendor_id+"\")'/><img src='"+ctxpath+"/css/images/email.gif' alt='email' />_";
		}
		if(type[1] != null && isNumeric(type[1])){
			strTable +="<input type='checkbox' checked='checked' onclick='enablePrint(0,\""+obj.vendor_id+"\")'/><a href='javascript:printRFQ(\""+obj.vendor_id+"\")' ><img src='"+ctxpath+"/css/images/printer.gif' alt='print' />"+"</a>"+type[1];	
		}else{
			strTable +="<input type='checkbox' onclick='enablePrint(1,\""+obj.vendor_id+"\")'/><img src='"+ctxpath+"/css/images/printer.gif' alt='print' />_";
		}
		strTable +="</td>";
		strTable +="<td>"+obj.INDV_STATUS+"</td>";
		strTable +="<td>"+obj.vendor_rating+"</td>";
		strTable +="<td>"+obj.SUGGEST_DLV_TIME+"</td>";
		strTable +="<td><a href='javascript:deleteVendor(\""+obj.vendor_id+"\")' ><img src='"+ctxpath+"/css/images/delete.png' alt='delete' />"+"</a></td></tr>";
	}
	strTable +="</table>";
	jQuery(document.getElementById("vendorlist")).html(strTable);
	} catch (e) {
		alert(e);
	}
	
}

function enableEmail(status){
	var url = ctxpath+"/vendormap.action?command=enableemail"+"&rfqid="+document.getElementById("rfqid").value  +
	"&vendorid="+vendorid+"&status="+status;
	sendAjaxGet(url, popvendorcallback);
}
function enablePrint(status){
	var url = ctxpath+"/vendormap.action?command=enableprint"+"&rfqid="+document.getElementById("rfqid").value  +
	"&vendorid="+vendorid+"&status="+status;
	sendAjaxGet(url, popvendorcallback);
}
function sendEmail(){
	var url = ctxpath+"/vendormap.action?command=sendemail"+"&rfqid="+document.getElementById("rfqid").value  +
	"&vendorid="+vendorid;
	sendAjaxGet(url, popvendorcallback);
}

function sendPrint(){
	var url = ctxpath+"/vendormap.action?command=sendprint"+"&rfqid="+document.getElementById("rfqid").value  +
	"&vendorid="+vendorid;
	sendAjaxGet(url, popvendorcallback);
}

function insertVendor(parm){
	var url = ctxpath+"/vendormap.action?command=insert"+"&rfqid="+document.getElementById("rfqid").value
	+"&vendorid="+document.getElementById("rfqvendorlist").value+"&typenotify="+
	escape($F("typenotify"))+"&suggestdelvtime="+$F("suggestdelvtime");
	
	//alert(url);
	sendAjaxGet(url, popvendorcallback);
}
function fnMapVendors(){
	var url = ctxpath+"/vendormap.action?command=initialmap"+"&rfqid="+$F("rfqid")+
	"&typenotify="+escape("0#X")+"&suggestdelvtime=10&department="+$F("department");
	 
	alert(url);
	sendAjaxGet(url, popvendorcallback);
}

function createVendorDropdownAjax(){
	var url = ctxpath+"/vendormap.action?command=vendorlist"+"&department="+document.getElementById("department").value+"";
	//alert("dropdown gtting called");
	sendAjaxGet(url, createVendorDropdownCallback);
}
function createVendorDropdownCallback(parm){

	try {

	var xmlDoc = parseXMLDocFromString(parm); 

		var elm = xmlDoc.getElementsByTagName("tr");
		document.getElementById("rfqvendorlist").options.length =0 ;
		for (var i=0; i<elm.length; i++) {
		document.getElementById("rfqvendorlist").options[i]= new Option();
		document.getElementById("rfqvendorlist").options[i].value = elm[i].childNodes[0].childNodes[0].nodeValue;
		document.getElementById("rfqvendorlist").options[i].text = elm[i].childNodes[1].childNodes[0].nodeValue;
		}
	} catch (e) {
		alert(e);
		// TODO: handle exception
	}	
	
}