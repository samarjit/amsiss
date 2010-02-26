var screenAction = "insert";
var dnid=null;
function populate()
{
	if(!(whereClause == ""))
	{
		var url=retriveurlpart+"?panelName=searchPanel&screenName="+screenName;	
		url=url+"&whereClause="+ whereClause;		
		// prompt("url",url);	
		sendAjaxGet(url, dnCallBack); //call this method in commonjs.js.
	}	
}

function dnCallBack(p)
{
	
	
	disable_fields();

	document.getElementById("btnSave").disabled=true;
	
	document.getElementById("retreivedetailsdiv").innerHTML = p;	
	panelsTable = document.getElementById("panelsdiv").getElementsByTagName("table");
	detailTable = document.getElementById("retreivedetailsdiv").getElementsByTagName("table");
	for ( var i=0; i<detailTable.length ; i++)
	{
		if (detailTable[i].id == 'buttonPanel')	continue;
		for(var k = 0; k<detailTable[i].rows[0].cells.length; k++) 
		{			
			comStr=jQuery.trim(jQuery(detailTable[i].rows[0].cells[k]).find("div").text()).split(',')[2];
			comVal = jQuery.trim(jQuery(detailTable[i].rows[1].cells[k]).text());	  
			
			for(var l = 0; l<panelsTable.length; l++)
			{
				if (panelsTable[l].id == 'buttonPanel')	continue;
				if(detailTable[i].id == panelsTable[l].id)

	
	var json = JSON.parse(p);	
	if(json.error !=null ){
		showerror(json.error);
	}
	else {
		p = decodeURIComponent(json.message);

		document.getElementById("retreivedetailsdiv").innerHTML = p;	
		panelsTable = document.getElementById("panelsdiv").getElementsByTagName("table");
		detailTable = document.getElementById("retreivedetailsdiv").getElementsByTagName("table");
		for ( var i=0; i<detailTable.length ; i++)
		{
			if (detailTable[i].id == 'buttonPanel')	continue;
			for(var k = 0; k<detailTable[i].rows[0].cells.length; k++) 
			{			
				comStr=jQuery.trim(jQuery(detailTable[i].rows[0].cells[k]).find("div").text()).split(',')[2];
				comVal = jQuery.trim(jQuery(detailTable[i].rows[1].cells[k]).text());	  

				for(var l = 0; l<panelsTable.length; l++)

				{
					if (panelsTable[l].id == 'buttonPanel')	continue;
					if(detailTable[i].id == panelsTable[l].id)
					{
						var input = panelsTable[l].getElementsByTagName("input");
						for( var m = 0 ; m < input.length; m++)
						{
							if(input[m].id == comStr)
							{
								input[m].value = comVal;
							}
						}
					}
				}
			}
		}
	}//outer for loop
}

function disable_fields()
{
	paneltables = document.getElementById("panelsdiv").getElementsByTagName("table");
	for(var i =0; i<paneltables.length;i++)
	{
		if (paneltables[i].id == 'panelFields')
		{
			fields = paneltables[i].getElementsByTagName("input");
			for(var k = 0; k<fields.length; k++)
			    fields[k].disabled = true;
		}
	}
}

jQuery(function() {
	
	jQuery('#receiveddate').datepicker({
		changeMonth: true,
		changeYear: true,
		dateFormat:'dd/mm/yy'
	});
	jQuery('#deliverydate').datepicker({
		changeMonth: true,
		changeYear: true,
		dateFormat:'dd/mm/yy'
	});
	jQuery('#warrantydate').datepicker({
		changeMonth: true,
		changeYear: true,
		dateFormat:'dd/mm/yy'
	});
});

function clearWhereClause()
{
	document.getElementById("panelFieldsWhereClause").Value = "";
}

function insertData() 
{
	var dataTable = document.getElementById("panelsdiv").getElementsByTagName("table");
}

function dnSave() 
{
	if(screenAction == "insert"){
		document.getElementById("deliverynoteid").value = "AUTOGEN_SEQUENCE_ID";
		var url=inserturlpart+"?panelName=searchPanel&screenName=frmDeliveryNote";
		//prompt("url",url);	
		url = url + "&itemid=" + document.getElementById("itemid").value;
		url = url + "&itemquantity=" + document.getElementById("itemquantity").value;
		//url = url + "&dnpurchaseorderid=" + document.getElementById("dnpurchaseorderid").value;
		url = url+ "&insertKeyValue="+ prepareInsertData();
		//prompt("url",url);
		//alert(url);
		//add key:vlaue to url	
		sendAjaxGet(url, saveCallBack);
		//changeStatus();
	}
	
	if(screenAction == "modify")
	{
		whereclause  = makeWhereClause();
		var url=updateurlpart+"?wclause="+whereclause+"&screenName=frmDeliveryNote";
		prompt("url",url);	
		url = url+ "&insertKeyValue="+ prepareInsertData();
		sendAjaxGet(url, saveCallBack); //call this method in commonjs.js.
	}
}
function changeStatus()
{
	var url = jsrpcurlpart+"?screenName=frmDeliveryNote&poid="+dnid+"&rpcid=requeststatus";
	sendAjaxGet(url, saveCallBack);	

}

//delete the record
function deleteData()
{
	whereclause  = makeWhereClause();
	var url=deleteurlpart+"?wclause="+whereclause+"&screenName=frmDeliveryNote";
	prompt("url",url);	
	//prompt("url",url);
	//add key:value to url
	sendAjaxGet(url, deleteCallBack);//call this method in commonjs.js.
	
}

//Error/Successful Message for deleting
function deleteCallBack(val) {
	//show success message 
	if(val < 0){
		
		showerror("Could not delete : Error Occured! ");
	}
	else{
		location.href= ctxpath+"/template1.action?screenName=frmDeliveryNoteList";
		alert("Successfully deleted your deliverynote! ");
	}
}

//Error/Successful Message for saving
function saveCallBack(val) 
{
	//show success message 
	if(val < 0)
		showerror("Could not save : Error Occured! ");
	else 
	{
		location.href= ctxpath+"/template1.action?screenName=frmDeliveryNoteList";
		alert("Successfully saved your deliverynote! ");
	}
}
function backtolist()
{
	location.href= ctxpath+"/template1.action?screenName=frmDeliveryNoteList";
}
function KeyValue(a,b) 
{
	this.key=a;
	this.value=b;
}

function panelClass(a,b) 
{
	this.name = a;
	this.valuesar = b;
}
function replacer(key, value) {
	if (typeof value === 'number' && !isFinite(value)) 
	{
		return String(value);
	}
	return value;
}


function prepareInsertData() 
{
	//alert("in prepare");
	//var array = {"panelFields1":{"empid":"9002","empname":"tutu","bdate":"12-10-2009"},"panelFields":{"empid":"9001","empname":"samarjit","bdate":"12-10-2009"}};
	var dataTable = document.getElementById("panelsdiv").getElementsByTagName("table");
	var pclass = new Array();
	for (var i=0; i<dataTable.length; i++) 
	{
		var query = "#panelsdiv #" + dataTable[i].id + " :input";
		var requestar = new Array();
		var elem = 	jQuery(query); 
		var j = 0;
		jQuery.each(elem,function(index,item){	
			requestar[j] = new KeyValue(item.id, item.value);				
			j++;						
			});
		pclass[i] = new panelClass(dataTable[i].id,requestar);					
	}	
	var k = new Object();
	k.json = pclass;
	var myJSONText = JSON.stringify(k,replacer,"");
	return myJSONText;			
}

function updateData(obj)
{
	screenAction = "modify";
	document.getElementById("btnSave").disabled=false;
	document.getElementById("btnModify").disabled=true;
	
	//There will be only one table in search screen 'search div'
	//document.requestFrm.submit();
	listTable = document.getElementById("retreivedetailsdiv").getElementsByTagName("table")[0];

	panelsTable = document.getElementById("panelsdiv").getElementsByTagName("table");
	for(var m =0; m<panelsTable.length;m++)
	{
		if (panelsTable[m].id == 'panelFields')
		{
			fields = panelsTable[m].getElementsByTagName("input");
			var query = jQuery(panelsTable[m]).find(" :input");
			var elem = 	jQuery(query);
			//alert("inside update panel panels " + fields.length);
			// for(var k = 0; k<fields.length; k++){
			jQuery.each(elem,function(k,fields)
			{
				for (i = 0; i <listTable.rows[0].cells.length ; i++ )
				{
					if(jQuery(listTable.rows[0].cells[i]).text().split(',')[2] == fields.id)
					{
						if(!(jQuery(listTable.rows[0].cells[i]).find("div").text().split(',')[6]  == 'Y')) 
						{
							fields.disabled = false;
						}
					}
					//for date
					if(jQuery(listTable.rows[0].cells[i]).text().split(',')[2] == fields.id)
					{
						if((jQuery(listTable.rows[0].cells[i]).text().split(',')[4] == 'DATE'))
						{
							fields.disabled = true;
						}
					} 
				}
			});
		}//if statement
	}//outer for loop
}

function makeWhereClause()
{
	//There will be only one table in search screen 'search div'
	listTable = document.getElementById("retreivedetailsdiv").getElementsByTagName("table")[0];
	whereClause = "panelFields1WhereClause=";
	if(listTable != null)
	{
		var j=0;
		requestar = new Array();
		for (i = 0; i <listTable.rows[0].cells.length ; i++)
		{  
			if(jQuery("#retreivedetailsdiv").find(" table tbody tr th").eq(i).find(" div").text().split(',')[6]  == "Y") 
			{
				name = jQuery("#retreivedetailsdiv").find(" table  tbody tr th").eq(i).find("div").text().split(',')[2];	 
				name = jQuery.trim(name);
				value = jQuery("#retreivedetailsdiv").find(" table tbody tr").eq(1).find(" td").eq(i).text();
				value = jQuery.trim(value);
				dnid=value;
				whereClause = whereClause + name + "!" + value + "~#";
				requestar[j] = new KeyValue(name, value);				
				j++;		
			}
		}
		var k = new Object();
		k.json = requestar;
		var myJSONText = JSON.stringify(k, replacer,"");
		whereClause = encodeURIComponent(myJSONText);//whereClause.replace(/(~#)$/, '');
	}
	return whereClause;	 
}

