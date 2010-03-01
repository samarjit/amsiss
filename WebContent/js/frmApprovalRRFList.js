function search(){
	
	//alert("calling search method....");
	var url=urlpart+"?panelName=searchPanel&screenName="+screenName;
	if(document.getElementById("srrfid"))
		url=url+'&srrfid='+document.getElementById("srrfid").value;
	if(document.getElementById("srrfquotationid"))
		url=url+'&srrfquotationid='+document.getElementById("srrfquotationid").value;
	if(document.getElementById("srrfrequestid"))
		url=url+'&srrfrequestid='+document.getElementById("srrfrequestid").value;
	if(document.getElementById("srrfdate"))
		url=url+'&srrfdate='+document.getElementById("srrfdate").value;
	if(document.getElementById("srrfstatus"))
		url=url+'&srrfstatus='+document.getElementById("srrfstatus").value;
	url=url+'&srrfaprv='+userId;
	
	var pagesize = jQuery('.searchdiv .pagesize').val();
	var pageno = jQuery('.searchdiv .pageno').val();
	
	if(pagesize)
		url=url+'&pagesize='+pagesize;
	if(pageno)
		url=url+'&pageno='+pageno;
	
	sendAjaxGet(url,mycall);
}
function mycall(p)
{
	//alert("Got from ajax:"+userId);
	document.getElementById("searchdiv").innerHTML = p;
	addSelectEvents();
}
var selectedIdx = -1;

function cleanUp() 
{
	var arobj = document.getElementById("searchdiv").getElementsByTagName("TR");
	for (var i =1 ; i < arobj.length; i++) 
	{
		arobj[i].style.backgroundColor= "#E7FFBF";
	}
}

/*////////////////////////
document.onclick = function(e){
	var targ;
	selectedIdx = -1;
	cleanUp();

	if (!e)
	  {
	  var e=window.event;
	  }
	if (e.target)
	  {
	  targ=e.target;
	  }
	else if (e.srcElement)
	  {
	  targ=e.srcElement;
	  }
	if (targ.nodeType==3) // defeat Safari bug
	  {
	  targ = targ.parentNode;
	  }
	var tname;
	tname=targ.tagName;
	var obj  = targ;
	if(obj.tagName)
	while( obj  != null && obj.tagName != "TR" && obj.tagName != "BODY"   ){
	obj = obj.parentNode;
	}
	var flag = false;
	var objtest = obj;
	while( objtest  != null && objtest.tagName != "BODY"   ){
	if(objtest.id == "searchdiv")flag=true;
	objtest = objtest.parentNode;

	}

	if(obj != null && (obj.tagName == "tr" || obj.tagName == "TR" )  && flag ){
//	  if(!(jQuery(obj).find("th").is("th")) ) {
//	  selectedIdx  = obj.rowIndex;
//	  obj.style.backgroundColor= "#a0b0a0";
//	  alert("inside jquery");
//	  }
	  

//	 prototype 
//	var nodes = $A(obj.getElementsByTagName("TH"));
//
//			nodes.each(function(node){
//					alert(node.nodeName + ': ' + node.innerHTML);
//				});
//	 
	var arTH = obj.getElementsByTagName("TH");
	 if(arTH.length == 0 ){
		 selectedIdx  = obj.rowIndex;
	  obj.style.backgroundColor= "#C5FF60";
	 }

	}
}
*/

function addSelectEvents(){
	var srchdv = document.getElementById("searchdiv").getElementsByTagName("TR");
	for (var i =0;i< srchdv.length;i++) {
	if(srchdv[i].childNodes[0].tagName != "TH"){ 
			srchdv[i].onclick=function(p){
			 cleanUp();
			 selectedIdx  = this.rowIndex;
			  this.style.backgroundColor= "#D6F1A3";
				}
			}
		}
}
 
//create url with where clause
function KeyValue(a,b) 
{
	this.key=a;
	this.value=b;
}

function replacer(key, value) {
	if (typeof value === 'number' && !isFinite(value)) {
		return String(value);
	}
	return value;
}

function viewdetails(){
	 
	// alert("in make url,selectedIdx:"+selectedIdx);
	//There will be only one table in search screen 'search div'
	//alert("Calling View Details Method");
	listTable = document.getElementById("searchdiv").getElementsByTagName("table")[0];
	whereClause = "panelFields1WhereClause=";
	if(listTable != null && selectedIdx != -1){
		//poplate wher clause url
		var j=0;
		requestar = new Array();
		for (i = 0; i <listTable.rows[0].cells.length ; i++ )
		{  
			//alert(listTable.rows[0].cells[i].childNodes[0].innerText.split(',')[6]);
			if(jQuery("#searchdiv").find(" table tbody tr th").eq(i).find(" div").text().split(',')[6]  == "Y") {
				name = jQuery("#searchdiv").find(" table  tbody tr th").eq(i).find("div").text().split(',')[2];	 
				name = jQuery.trim(name);
				value = jQuery("#searchdiv").find(" table tbody tr").eq(selectedIdx).find(" td").eq(i).text();
				value = jQuery.trim(value);
				whereClause = whereClause + name + "!" + value + "~#";
				requestar[j] = new KeyValue(name, value);				
				j++;		
				//alert(jQuery("#searchdiv table th:eq("+i+") div").text());
			}
		}
		var k = new Object();
		k.json = requestar;
		var myJSONText = JSON.stringify(k, replacer,"");
		
		whereClause = encodeURIComponent(myJSONText);//whereClause.replace(/(~#)$/, '');
		document.getElementById("panelFieldsWhereClause").value=whereClause;
		document.getElementById("formwhere").screenName.value = "frmApprovalRRF";
		document.getElementById("formwhere").submit();
	}
	else {
		return false;
	}
	return true;	 
}

//create url with where clause
function clearWhereClause(){
	document.getElementById("panelFieldsWhereClause").value="";
}


