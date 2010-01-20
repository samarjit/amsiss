function populate()
{
	//alert("This alert box was called with the onload event");	

	if((!(whereClause == ""))){
		var url=retriveurlpart+"?panelName=searchPanel&screenName="+screenName;	
		url=url+"&whereClause="+ whereClause;		
		//alert("In message: whereClause=" + whereClause);
		// prompt("url",url);	
		sendAjaxGet(url, quotationCallBack);
	}	
	//alert("In populate");
}
var screenMode = "insert";

function clearWhereClause(){
	document.getElementById("panelFieldsWhereClause").Value = "";
}

function quotationCallBack(p){
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

				}
			}
		}
	}
	
	disable_fields();
	fnAdjustTableWidth();
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

function quotSave() {
	//alert("in save ");	
	alert(inserturlpart);
	//alert("in savesdkgf ");	
	//var url=urlpart+"?panelName=searchPanel&screenName=frmRequest"+screenName;	
	
	if(screenMode == "insert"){
	var url=inserturlpart+"?panelName=searchPanel&screenName=frmQuotation";
	prompt("url",url);	
	url = url+ "&insertKeyValue="+ prepareInsertData();
	//prompt("url",url);
	//add key:vlaue to url
	sendAjaxGet(url, saveCallBack);

	}
	
	if(screenMode == "modify"){
		whereclause  = makeWhereClause();
		var url=updateurlpart+"?wclause="+whereclause+"&screenName=frmQuotation";
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
	else alert("Successfully saved your quotation! ");
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
					
					if(jQuery(listTable.rows[0].cells[i]).text().split(',')[2] == fields.id){
						
						//alert(jQuery(listTable.rows[0].cells[i]).find("div").text().split(',')[6]);
						if(!(jQuery(listTable.rows[0].cells[i]).find("div").text().split(',')[6]  == 'Y')) {

							fields.disabled = false;
						}
					}

					//for date
					if(jQuery(listTable.rows[0].cells[i]).text().split(',')[2] == fields.id){
						if((jQuery(listTable.rows[0].cells[i]).text().split(',')[4] == 'DATE')) {


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
