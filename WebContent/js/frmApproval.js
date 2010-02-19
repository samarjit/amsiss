function populate()
{
	//alert("In populate method");
	if((!(whereClause == "")))
	{
		var url=retriveurlpart+"?panelName=searchPanel&screenName="+screenName;	
		url=url+"&whereClause="+ whereClause;		
		sendAjaxGet(url, approvalReqCallBack);
	}	
}
var screenAction = "insert";

function clearWhereClause(){
	document.getElementById("panelFieldsWhereClause").Value = " ";
}

function approvalReqCallBack(p)
{
	//alert("Starting approvalReqCallBack method...");
	document.getElementById("retreivedetailsdiv").innerHTML = p;	
	panelsTable = document.getElementById("panelsdiv").getElementsByTagName("table");
	//alert("PanelsTable's Length : "+panelsTable.length);
	
	detailTable    = document.getElementById("retreivedetailsdiv").getElementsByTagName("table");
	//alert("DetailTable's Length : "+detailTable.length);
	
	for ( var i=0; i<detailTable.length ; i++)
	{
		if (detailTable[i].id == 'buttonPanel')
		continue;
		//alert("detail table's cell length : "+detailTable[i].rows[0].cells.length);
		for(var k = 0; k<detailTable[i].rows[0].cells.length; k++) {			
						
			comStr = jQuery.trim(jQuery(detailTable[i].rows[0].cells[k]).find("div").text()).split(',')[2];
			comVal = jQuery.trim(jQuery(detailTable[i].rows[1].cells[k]).text());	  
			//alert("comStr:",comStr);
			//alert("comVal:",comVal);
				
			for(var l = 0; l<panelsTable.length; l++)
			{
				//alert(panelsTable[i].id);
				if (panelsTable[l].id == 'buttonPanel')
				continue;
			
				if(detailTable[i].id == panelsTable[l].id)
				{ 
				   //var input = panelsTable[l].getElementsByTagName("input");
					var query = jQuery(panelsTable[l]).find(" :input");
					var elem = 	jQuery(query);					
					jQuery.each(elem, function(index, item) 
					{						
					 	if(item.id == comStr){
						 jQuery(item).val(comVal);						 
					 	}
					});
				}
			}
		}
	}
	/*if(screenMode == "createrrf")
	{
		document.getElementById("modify").disabled=true;
		document.getElementById("delete").disabled=true;
		document.getElementById("cancel").disabled=true;
		disable_quot_fields();
	}
	else
	{		
		disable_fields();
	}
	fnAdjustTableWidth();*/
	//alert("In the Reqcallback method");
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
		if (panelsTable[i].id == 'panelFields' || panelsTable[i].id == 'quotationFields' ){
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


function requestSubmit() {
	//alert("In rrfsubmit  !!");

	//var applicationid = jQuery("#panelsdiv #panelFields  input[id=rfqid]").attr("value");
	var applicationid = document.getElementById("rfqid").value;
	//alert(applicationid);
	
	//var actionid =  jQuery("#panelsdiv #statusFields input[id=wflactiondesc]").attr("value");
	//var wflid=jQuery("#panelsdiv #statusFields input[id=wflid]").attr("value");
	var actionid =  document.getElementById("wflactiondesc").value;
	var wflid= document.getElementById("wflid").value;
	var requestid= document.getElementById("requestid").value;
	//alert(rrfid);
	//document.getElementById("submitanchor").href //stealing from actionbutton.jsp its not the right way, if its coming from viewDetails this will be wrong anyway! 	
	var url = "scrworkflow.action?action=true&doString="+actionid+"&wflid="+wflid+"&appid="+applicationid+"&screenName=frmApproval"+"&requestid="+ requestid ;
	//alert(url);
	location.href = url;
	//prepareInsertData();
}

function approvalReqSave() {
	//alert("in save ");
	screenMode="modify";
	//alert(inserturlpart+" Mode:"+screenMode);
	//alert("in savesdkgf ");	
	//var url=urlpart+"?panelName=searchPanel&screenName=frmRequest"+screenName;	
	//alert(screenMode);
	if(screenMode == "insert"){
	document.getElementById("requestid").value = "AUTOGEN_SEQUENCE_ID";	
	var url=inserturlpart+"?panelName=searchPanel&screenName=frmApproval";
	//prompt("url",url);	
	url = url+ "&insertKeyValue="+ prepareInsertData()+"&invokewfl=scrflow&activityname=CRFQ&create=true";
	//prompt("url",url);
	//add key:vlaue to url
	sendAjaxGet(url, saveCallBack);

	}
	
	if(screenMode == "modify"){
		whereclause  = makeWhereClause();
		var url=updateurlpart+"?wclause="+whereclause+"&screenName=frmApproval";
		//prompt("url",url);	
		url = url+ "&insertKeyValue="+ prepareInsertData();

		//prompt("url",url);
		//add key:vlaue to url
		sendAjaxGet(url, saveCallBack);
		}
	
		
}

function saveCallBack(val) {
	//show success message 
	if(val < 0){
		
		alert("Error while saving! ");
	}
	else{
		if(screenAction == "modify"){

			//location.href= ctxpath+"/template1.action?screenName=frmRRFList"
			alert("Successfully modified your rrf! ");
		}
		if(screenAction == "insert"){

			//location.href= ctxpath+"/template1.action?screenName=frmQuotationList"
			alert("Successfully created your rrf! ");
		}
		}
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
				//alert("requestar"+requestar[j]);
				j++;						
			});
			pclass[i] = new panelClass(dataTable[i].id,requestar);	
			
		}	
		var k = new Object();
		k.json = pclass;
		
		var myJSONText = JSON.stringify(k, replacer,"");
		//alert(myJSONText);	
		return myJSONText;			
}
//update the status depending on the manager approval
function updateStatus(btnname) 
{
	//alert(">>>Button Name:"+btnname);
	if(btnname=="btnforwardtonextlevel")
	{
		//alert("forwardtonextlevel");
		
		//document.getElementById("requestid").value = "AUTOGEN_SEQUENCE_ID";	
		whereclause  = makeWhereClause();
		var url=updateurlpart+"?wclause="+whereclause+"&screenName=frmApproval";
		//prompt("url",url);	
		url = url+ "&insertKeyValue="+ prepareInsertData();

		//prompt("url",url);
		//add key:vlaue to url
		sendAjaxGet(url, saveCallBack);
					
			
						
	}
	else if(btnname=="btnapprove")
	{
		//alert("approve");
	}
	else if (btnname=="btnreject")
	{
		//alert("reject");
	}	
}



/*function updateData(obj){

	whereclause  = makeWhereClause();
	alert("whereclause :"+whereclause);
	var url=updateurlpart+"?wclause="+whereclause+"&screenName=frmApproval";
	prompt("url",url);	
	url = url+ "&insertKeyValue="+ prepareInsertData();

	//prompt("url",url);
	//add key:vlaue to urlate
	sendAjaxGet(url, saveCallBack);

}*/

/*function updateData(obj){
	//obj.disabled = true;
	//screenAction = "modify";
	//There will be only one table in search screen 'search div'
	//document.requestFrm.submit();
	//alert("In update Data method...");
	//document.getElementById("save").disabled=false;
	//document.getElementById("modify").disabled=true;
	panelsTable = document.getElementById("panelsdiv").getElementsByTagName("table");
	//alert("PanelsTable's Length : "+panelsTable.length);
	detailTable    = document.getElementById("retreivedetailsdiv").getElementsByTagName("table");
	//alert("DetailTable's Length : "+detailTable.length);
	
	for ( var i=0; i<detailTable.length ; i++)
	{
		if (detailTable[i].id == 'buttonPanel')
		continue;
		//alert("detail table's cell length : "+detailTable[i].rows[0].cells.length);
		for(var k = 0; k<detailTable[i].rows[0].cells.length; k++) 
		{			
			comStr = jQuery.trim(jQuery(detailTable[i].rows[0].cells[k]).find("div").text()).split(',')[2];
			comVal = jQuery.trim(jQuery(detailTable[i].rows[1].cells[k]).text());	  
			//alert("comStr: "+comStr);
			//alert("comVal: "+comVal);
			var testid=document.getElementById("requestid").value;
			alert("Test id"+testid);
			if(comStr='requeststatus' && comVal=='Applied')
			{
				document.getElementById("requeststatus").value='Approved';
				var whereclause  = makeWhereClause();
				//var whereclause  = " where REQID="+testid;
				alert("Where Clause >>>>>"+whereclause);
				var url=updateurlpart+"?wclause=" + whereclause+"&screenName=frmApproval";
				
				//alert("URL is : "+url);
				prompt("url",url);	
				url = url+ "&insertKeyValue="+ prepareInsertData();
				//prompt("url",url);
				//add key:vlaue to url
				sendAjaxGet(url, saveCallBack);
			
				}
				
			}
				
		}
	}*/
	/*
	
	for(var m =0; m<panelsTable.length;m++){

		if (panelsTable[m].id == 'panelFields'){

			fields = panelsTable[m].getElementsByTagName("input");
			var query = jQuery(panelsTable[m]).find(" :input");
			var elem = 	jQuery(query);
			alert("Element :"+elem);
			//alert("inside update panel panels " + fields.length);
			// for(var k = 0; k<fields.length; k++){
			jQuery.each(elem,function(k,fields){
				//alert("inside panel panels " + fields.id);
				for (i = 0; i <listTable.rows[0].cells.length ; i++ )
				{
					alert("Data for update method :"+);
				}

			});

		}*/
	
	

 
function makeWhereClause(){
	 
	// alert("in make url,selectedIdx:"+selectedIdx);
	//There will be only one table in search screen 'search div'
	
	listTable = document.getElementById("retreivedetailsdiv").getElementsByTagName("table")[0];

	whereClause = "panelFields1WhereClause=";
	//alert(">>>>>whereClause in makeWhereClause method ::"+whereClause);
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
				//alert(">>whereClause in for loop"+whereClause);
				//alert(">>>Name in makewhereclause method ::"+name);
				//alert(">>>Value in makewhereclause method ::"+value);
				requestar[j] = new KeyValue(name, value);				
				j++;		
				//alert(jQuery("#retreivedetailsdiv table th:eq("+i+") div").text());
			}
		}
		var k = new Object();
		k.json = requestar;
		var myJSONText = JSON.stringify(k, replacer,"");
		
		whereClause = encodeURIComponent(myJSONText);//whereClause.replace(/(~#)$/, '');
		//alert(">>>whereClause in MakeWhereClause::"+whereClause);
		 		
	}
	
	return whereClause;	 

}

function submitactivity()
{
	alert("here in submit activity");
	alert(wflcontrollerurl);
	var applicationid = jQuery("#panelsdiv #panelFields  input[id=reqid]").attr("value");
	alert(applicationid);
	var actionid = jQuery("#panelsdiv #statusFields input[id=wflactionid]").attr("value");
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

