function populate()
{
	//alert("This alert box was called with the onload event");	

	if((!(whereClause == ""))){
		var url=retriveurlpart+"?panelName=searchPanel&screenName="+screenName;	
		url=url+"&whereClause="+ whereClause;		
		//alert("In message: whereClause=" + whereClause);
		// prompt("url",url);	
		sendAjaxGet(url, approvalRRFCallBack);
	}	
	alert("In populate");
	System.out.println("in populate..");
}

function clearWhereClause(){
	alert(">>>Calling clearWhereClause...");
	document.getElementById("panelFieldsWhereClause").value = "";
}

var screenMode = "insert";

function approvalRRFCallBack(p){
	//alert("Got from ajax:"+p);
	disable_fields();
	document.getElementById("rrfcomments").disabled=false;
	
	document.getElementById("retreivedetailsdiv").innerHTML = p;	
	panelsTable = document.getElementById("panelsdiv").getElementsByTagName("table");
	//alert(panelsTable.length);
	detailTable    = document.getElementById("retreivedetailsdiv").getElementsByTagName("table");

	for ( var i=0; i<detailTable.length ; i++)
	{
		//alert(detailTable[i].id);			
		if (detailTable[i].id == 'buttonPanel')	continue;
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
					var input = panelsTable[l].getElementsByTagName("input");
					//alert(input.length);

					for( var m = 0 ; m < input.length; m++)
					{
						if(input[m].id == comStr)
						{
							//alert(comStr +"   "+comVal +"   " +panelsTable[l].id + " " + detailTable[i].id);
							input[m].value = comVal;
						}
					}
				}
			}
		}
	}
}

function disable_fields(){
	paneltables = document.getElementById("panelsdiv").getElementsByTagName("table");

	for(var i =0; i<paneltables.length;i++){
		
	//	alert("panels "+ panelsTable[i].id);
		if (paneltables[i].id == 'panelFields'){
			
		fields = paneltables[i].getElementsByTagName("input");
		//	alert("inside panel panels " + fields.length);
			for(var k = 0; k<fields.length; k++){
			//	alert("inside panel panels " + fields[k].id);
				fields[k].disabled = true;
			
			}
		
		}
	}
}

function insertData() {
	var dataTable = document.getElementById("panelsdiv").getElementsByTagName("table");
}

function reqSubmit() {
	
	prepareInsertData();
}

function deleteData(){
	
	whereclause  = makeWhereClause();
	var url=deleteurlpart+"?wclause="+whereclause+"&screenName=frmApprovalRRF";
	prompt("url",url);	
	//alert("in update!!!!!!! url" +url);
	//prompt("url",url);
	//add key:vlaue to url
	sendAjaxGet(url, saveCallBack);
}

//Error/Successful Message for saving
function saveCallBack(val) {
	//show success message 
	if(val < 0)
	{ 
		showerror("Could not update : Error Occured! "); 
	}
	
	else
	{
		if(flash=='1')
		{ 
			location.href= ctxpath+"/template1.action?screenName=frmApprovalRRFList";
			alert("Successfully sent your rrf to the next level! ");	
		}
		else if(flash=='2')
		{  
			location.href= ctxpath+"/template1.action?screenName=frmApprovalRRFList";
			alert("Successfully saved your approval rrf! "); 
		}
		else if(flash=='3')
		{  
			location.href= ctxpath+"/template1.action?screenName=frmApprovalRRFList";
			alert("Successfully saved your rejected rrf! "); 
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
var rrfid= null;
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
				rrfid=value;
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
		//alert(">>>whereClause in MakeWhereClause::"+whereClause);
		 		
	}
	
	return whereClause;	 

}
function approvalRrfSave() 
{
    whereclause  = makeWhereClause();
	var url=updateurlpart+"?wclause="+whereclause+"&screenName=frmApprovalRRF";
	//prompt("url",url);	
	url = url+ "&insertKeyValue="+ prepareInsertData();
	//prompt("url",url);
	//add key:vlaue to url
	sendAjaxGet(url, saveCallBack);
}

function saveCallBackforPO(val) 
{
	//show success message 
	if(val < 0)
		showerror("Could not save PO for this rrf : Error Occured! ");
	else 
	{
		alert("Successfully saved your purchase order! ");
	}
}

var flash='0';
//update the status depending on the manager approval
function updateStatus(btnname) 
{
	
	if(btnname=="btnforwardtonextlevel")
	{
		flash=='1';	
		document.getElementById("rrfstatus").value = "Fw To Next Level";	
		approvalRrfSave();
		savePO();
	}
	else if(btnname=="btnapprove")
	{
		flash=='2';
		document.getElementById("rrfstatus").value = "Approved";	
		approvalRrfSave();
		getMgrId();
	}
	else if (btnname=="btnreject")
	{
		flash=='3';
		document.getElementById("rrfstatus").value = "Rejected";	
		approvalRrfSave();
	}	
}
function getMgrId()
{
	
	var url = jsrpcurlpart+"?screenName=frmApprovalRRF&rrfid="+rrfid+"&rpcid=getmanagerid";
	sendAjaxGet(url, saveCallBack);
	/*jQuery.ajax({
		   type: "GET",
		   url: "jsrpc.action?screenName=frmApprovalRRF&rrfid="+rrfid+"&rpcid=getmanagerid",
		   success:  saveCallBackforPO

		 });*/
}

function savePO()
{
	alert("in testjsrpc method...");
	alert(">>RRFid>>>>"+rrfid);
	jQuery.ajax({
		   type: "GET",
		   url: "jsrpc.action?screenName=frmApprovalRRF&rrfid="+rrfid+"&rpcid=purchaseorder",
		   success:  saveCallBackforPO

		 });
}


function submitactivity(){
	//alert("here in submit activity");
	alert(wflcontrollerurl);
	var applicationid = jQuery("#panelsdiv #panelFields  input[id=reqid]").attr("value");
	//alert(applicationid);
	var actionid =  jQuery("#panelsdiv #statusFields input[id=wflactionid]").attr("value");
	var wflid=jQuery("#panelsdiv #statusFields input[id=wflid]").attr("value");
	
	//document.getElementById("submitanchor").href //stealing from actionbutton.jsp its not the right way, if its coming from viewDetails this will be wrong anyway! 	
	location.href = wflcontrollerurl+"?action=true&doString="+actionid+"&wflid="+wflid+"&appid="+applicationid;
		
	}

function submitScreenFlowactivity(){
	//alert("here in submit activity")
	alert(wflcontrollerurl);
	var applicationid = jQuery("#panelsdiv #panelFields  input[id=reqid]").attr("value");
	//alert(applicationid);
	var actionid =  jQuery("#panelsdiv #statusFields input[id=wflactiondesc]").attr("value");
	var wflid=jQuery("#panelsdiv #statusFields input[id=wflid]").attr("value");
	
	//document.getElementById("submitanchor").href //stealing from actionbutton.jsp its not the right way, if its coming from viewDetails this will be wrong anyway! 	
	location.href = wflcontrollerurl+"?action=true&doString="+actionid+"&wflid="+wflid+"&appid="+applicationid;
		
	}
