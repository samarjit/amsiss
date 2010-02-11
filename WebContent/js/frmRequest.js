function populate()
{
	alert(screenName);
	if(screenName=='frmRequest'){
		//var url = prepopulateurlpart+"?panelName=searchPanel&prepopulate=true&screenName="+screenName;
		var url = jsrpcurlpart+"?screenName="+screenName+"&rpcid=createRequest";
		sendAjaxGet(url, requestCallBack);
		//alert("This alert box was called with the onload event");	
	}

}
var screenMode = "insert";


function requestCallBack(parm){
	var jobj = JSON.parse(parm);
	if(jobj.error != null ){
	alert(jobj.error);return;
	} 
	document.getElementById("empid").value = jobj.empid;
	
	document.getElementById("empname").value = jobj.empname;
	document.getElementById("reqdate").value = jobj.reqdate;
	
	var mgrid = (jobj.mgrid).split(",");
	for(var i=0;i<mgrid.length;i++){
		
	AddSelectOption(document.getElementById("mgrid"),mgrid[i],mgrid[i],false);
	}
	

		var ref_reqid = (jobj.REF_REQID).split(",");
	for(var i=0;i<ref_reqid.length;i++){
		
	AddSelectOption(document.getElementById("refreqid"),ref_reqid[i],ref_reqid[i],false);
	}
	

}




function generatename(obj){
	var selIndex = obj.selectedIndex;
	var empid = obj.options[selIndex].value;
	if(selIndex!=0){
		var url = jsrpcurlpart+"?screenName="+screenName+"&empid="+empid+"&rpcid=getManager";
	sendAjaxGet(url, generaterequestname);
	}
}

function generaterequestname(p){
	var jobj = JSON.parse(p);
	document.getElementById("mgrname").value = jobj.mgrname;	
}
 /*
function generatecall(obj){
	var selIndex = obj.selectedIndex;
	alert(selIndex);
	scrName = obj.options[selIndex].value;
	if(selIndex!=0){
	var url = generateurlpart+"?screenName="+scrName+"&ajaxPopulate=true";
	sendAjaxGet(url, generaterequest);
	}
}

function generaterequest(p){
	
	document.getElementById("retreivedetailschilddiv").innerHTML = p;	
} */

function generatecall(obj){
	var selIndex = obj.selectedIndex;
	scrName = obj.options[selIndex].value;
	if(selIndex!=0) {
		if(scrName=='New Hardware'){
         document.getElementById("NewHardware").style.display = "block";
         document.getElementById("Software").style.display = "none";
         document.getElementById("HardwareUpgrade").style.display = "none";

    } 
		if(scrName=="New Software"){
			 document.getElementById("NewHardware").style.display = "none";
	         document.getElementById("Software").style.display = "block";
	         document.getElementById("HardwareUpgrade").style.display = "none";

    }
		
		if(scrName== "Software Upgrade"){
			 document.getElementById("NewHardware").style.display = "none";
	         document.getElementById("Software").style.display = "block";
	         document.getElementById("HardwareUpgrade").style.display = "none";

   }
		if(scrName=="Hardware Upgrade"){
			 document.getElementById("NewHardware").style.display = "none";
	         document.getElementById("Software").style.display = "none";
	         document.getElementById("HardwareUpgrade").style.display = "block";
	       
	    }
}
}
function clearWhereClause(){
	document.getElementById("panelFieldsWhereClause").Value = "";
}
/*
function requestCallBack(p){
	alert("Got from ajax:"+p);

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
					var elms = document.getElementById("panelsdiv").getElementsByTagName("*");

					//var input = panelsTable[l].getElementsByTagName("input");
					//alert(input.length);

					for( var m = 0 ; m < elms.length; m++)
					{ 
						if(elms[m].id == comStr)
						{
							switch(elms[m].type) {

							case "text":
								elms[m].value = comVal;

							case "select-one":
							{
								AddSelectOption(elms[m],comVal,comVal,false);
								for(var f=2;f<detailTable[i].rows.length;f++){
									comVal = (jQuery.trim(jQuery(detailTable[i].rows[f].cells[k]).text()));
									AddSelectOption(elms[m],comVal,comVal,false);

								}
							}		

							}
						}
					}
				}
			}
		}
	}

	//disable_fields();

} */

function AddSelectOption(selectObj, text, value, isSelected) 
{
	if (selectObj != null && selectObj.options != null)
	{
		selectObj.options[selectObj.options.length] = 
			new Option(text, value, false, isSelected);
	}
}

function disable_fields(){
	panelsTable = document.getElementById("panelsdiv").getElementsByTagName("table");

	for(var i =0; i<panelsTable.length;i++){

		//	alert("panels "+ panelsTable[i].id);
		if (panelsTable[i].id == 'panelFields'){

			fields = panelsTable[i].getElementsByTagName("input");
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

function reqSave() {


	//alert("in savesdkgf ");	
	//var url=urlpart+"?panelName=searchPanel&screenName=frmRequest"+screenName;	

		var url=inserturlpart+"?panelName=searchPanel&screenName=frmRequest";
		prompt("url",url);	
		url = url+ "&insertKeyValue="+ prepareInsertData()+"&invokewfl=worlkflow&activityname=CR&create=true";
		alert(url);
		//add key:vlaue to url
		sendAjaxGet(url, saveCallBack);

	

	if(screenMode == "modify"){
		whereclause  = makeWhereClause();
		var url=updateurlpart+"?wclause="+whereclause+"&screenName=frmRequest";
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

	//var array = {"panelFields1":{"empid":"9002","empname":"tutu","bdate":"12-10-2009"},"panelFields":{"empid":"9001","empname":"samarjit","bdate":"12-10-2009"}};
	var dataTable = document.getElementById("panelsdiv").getElementsByTagName("table");
	var pclass = new Array();


	//alert(dataTable.length);		
	for (var i=0; i<dataTable.length; i++) {

		var query = "#panelsdiv #" + dataTable[i].id + " :input";
		var requestar = new Array();
	
		var elem = 	jQuery(query); 
		var j = 0;
		jQuery.each(elem, function(index, item) {	
		
			var val = item.id;

			if(item.type=="hidden" && val.substring(val.length-2,val.length)=='id'){
				item.value = "AUTOGEN_SEQUENCE_ID";}

			requestar[j] = new KeyValue(item.id, item.value);				
			j++;						
		});

		pclass[i] = new panelClass(dataTable[i].id,requestar);					
	}	
	var k = new Object();
	k.json = pclass;
	var myJSONText = JSON.stringify(k, replacer,"");
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
			//alert("inside update panel panels " + fields.length);
			for(var k = 0; k<fields.length; k++){
				//	alert("inside panel panels " + fields[k].id);
				for (i = 0; i <listTable.rows[0].cells.length ; i++ )
				{
					// alert(fields[k].id);
					// alert(jQuery(listTable.rows[0].cells[i]).text());
					if(!(jQuery(listTable.rows[0].cells[i]).text().split(',')[6]  == 'Y')) {

						if(jQuery(listTable.rows[0].cells[i]).text().split(',')[3] == fields[k].id){

							fields[k].disabled = false;
						}
					}

					//for date
					if((jQuery(listTable.rows[0].cells[i]).text().split(',')[4] == 'DATE')) {

						if(jQuery(listTable.rows[0].cells[i]).text().split(',')[3] == fields[k].id){
							fields[k].disabled = true;
						}
					} 


				}

			}
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
	alert("here in submit activity");
	alert(wflcontrollerurl);
	var applicationid = jQuery("#panelsdiv #panelFields  input[id=reqid]").attr("value");
	alert(applicationid);
	var actionid =  jQuery("#panelsdiv #statusFields input[id=wflactionid]").attr("value");
	var wflid=jQuery("#panelsdiv #statusFields input[id=wflid]").attr("value");

	//document.getElementById("submitanchor").href //stealing from actionbutton.jsp its not the right way, if its coming from viewDetails this will be wrong anyway! 	
	location.href = wflcontrollerurl+"?action=true&doString="+actionid+"&wflid="+wflid+"&appid="+applicationid;

}

function submitScreenFlowactivity(){
	alert("here in submit activity");
	location.href ="workflow.action?activityname=CR&create=true";
	alert(wflcontrollerurl);
	var applicationid = jQuery("#panelsdiv #panelFields  input[id=reqid]").attr("value");
	alert(applicationid);
	var actionid =  jQuery("#panelsdiv #statusFields input[id=wflactiondesc]").attr("value");
	var wflid=jQuery("#panelsdiv #statusFields input[id=wflid]").attr("value");

	//document.getElementById("submitanchor").href //stealing from actionbutton.jsp its not the right way, if its coming from viewDetails this will be wrong anyway! 	
	location.href = wflcontrollerurl+"?action=true&doString="+actionid+"&wflid="+wflid+"&appid="+applicationid;

}
