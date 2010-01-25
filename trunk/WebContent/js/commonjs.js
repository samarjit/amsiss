var xmlHttpReq = false;
function xmlhttpPost() {
	if(xmlHttpReq)return;
    xmlHttpReq = false;
    var self = this;
    // Mozilla/Safari
    if (window.XMLHttpRequest) {
        self.xmlHttpReq = new XMLHttpRequest();
    }
    // IE
    else if (window.ActiveXObject) {
        self.xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
    }
}


function sendAjaxPost(strURL,data,callbak){ 
	xmlhttpPost();
	if(strURL == null)
		strURL="searchlist.action";
	var rnum = Math.random()*1000;
	
	if(strURL.indexOf("?") >-1)strURL+="&rnum="+rnum;
	else strURL+="?rnum="+rnum;
	
	 if(data == null)data="";
	 if(typeof( callbak) !="undefined" )mycallback = callbak;
	self.xmlHttpReq.open('POST', strURL, true);
	self.xmlHttpReq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	self.xmlHttpReq.onreadystatechange = doworkcallback;
	self.xmlHttpReq.send(data);
}


function sendAjaxGet(strURL,callbak){ 
	/*xmlhttpPost();
	if(strURL == null)
	strURL="searchlist.action";
	 
	var rnum = Math.random()*1000;
	
	if(strURL.indexOf("?") >-1)strURL+="&rnum="+rnum;
	else strURL+="?rnum="+rnum;
	*/
	 if(typeof( callbak) !="undefined" )mycallback = callbak;
	/*self.xmlHttpReq.open('GET', strURL, true);
	self.xmlHttpReq.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	self.xmlHttpReq.onreadystatechange = doworkcallback;
	self.xmlHttpReq.send();*/
	jQuery.ajax({
		   type: "GET",
		   url: strURL,
		   success:  callbak

		 });
}

function doworkcallback() {
    if (self.xmlHttpReq.readyState == 4) {
    	mycallback(xmlHttpReq.responseText);
    }
}

function mycallback(val){
	 alert("Using default Ajax callback function:"+ val );
}

function parseXMLDocFromString(parm){
	var xmlDoc;
	if (window.DOMParser)
	  {
	  parser=new DOMParser();
	  xmlDoc=parser.parseFromString(parm,"text/xml");
	  }
	else // Internet Explorer
	  {
	  xmlDoc=new ActiveXObject("Microsoft.XMLDOM");
	  xmlDoc.async="false";
	  xmlDoc.loadXML(parm);
	  }
	return xmlDoc;
}

function isNumeric(form_value) 
{ 
    if (form_value.match(/^\d+$/) == null) 
        return false; 
    else 
        return true; 
} 