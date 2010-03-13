<%@ page import="com.opensymphony.workflow.Workflow,
                 com.opensymphony.workflow.basic.BasicWorkflow,
                 com.opensymphony.workflow.spi.Step,
                 java.util.List" %>
<% response.setHeader("Pragma","no-cache");
  response.setDateHeader("Expires",0);
  response.setHeader("Cache-Control","no-cache");
%>


 
<html>
<title>${screenTitle }</title>
<%String ctxstr = request.getContextPath(); %>
<style>
@import "<%=ctxstr %>/css/button.css";
@import "<%=ctxstr %>/css/header.css";
</style>
<style>
.actiondesctbl{

margin:0px;
font-size:1em;
border:1px solid #888888;
}
.actiondesctbl TD{
padding: 0px;
border-collapse: collapse;
}
#workflowCanvas{
padding-left: 10px;
}
#actiondescdiv{
float: right;
}
</style>
<script language="javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
<script language="javascript" src="<%=request.getContextPath() %>/js/json2.js"></script>
<script language="javascript" src="<%=request.getContextPath() %>/js/commonjs.js"></script>
<script type="text/javascript"><!--
var gpd="";
var actiondesc_completed = "";
var actiondesc_started = "";
var ctxpath="<%=ctxstr %>";
var jg;
function drawGraph(xmldoc){
	

	 
	 jg = new jsGraphics("workflowCanvas");
	
    jg.setColor("#ff0000");
    jg.setStroke(3);
   /* var xAdjust = 68;
    var yAdjust = -17;
    var widthAdjust = 3;
    var heightAdjust = 2;
    */
    var xAdjust = 7;
    var yAdjust = -2;
     xAdjust = parseInt(document.getElementById("xadjust").value);
  
    
 
     yAdjust = parseInt(document.getElementById("yadjust").value);
   
     
     
    var widthAdjust = 1;
    var heightAdjust = 1;
    //parsing xml and paint;
    var cells =  xmldoc.getElementsByTagName("node");
   
        for(var n = 0; n < cells.length; n++){
            var cell = cells[n];//alert(cell.getAttribute("name")+" "+ actiondesc);
            if(actiondesc_completed.indexOf(cell.getAttribute("name") ) > -1 )
                {jg.setColor("#FF0000");
                //alert(cell.getAttribute("x") + " " +cell.getAttribute("y")+" "+  cell.getAttribute("width")   +" "+  cell.getAttribute("height") );
                jg.drawRect(parseInt(cell.getAttribute("x")) + xAdjust, parseInt(cell.getAttribute("y")) + yAdjust, parseInt(cell.getAttribute("width")) + widthAdjust, parseInt(cell.getAttribute("height")) + heightAdjust);
            }
            if(actiondesc_started.indexOf(cell.getAttribute("name") ) > -1 )
            {jg.setColor("#C5FF19");
            //alert(cell.getAttribute("x") + " " +cell.getAttribute("y")+" "+  cell.getAttribute("width")   +" "+  cell.getAttribute("height") );
            jg.drawRect(parseInt(cell.getAttribute("x")) + xAdjust, parseInt(cell.getAttribute("y")) + yAdjust, parseInt(cell.getAttribute("width")) + widthAdjust, parseInt(cell.getAttribute("height")) + heightAdjust);
        }
        }
     
    jg.paint();
    
}
var xmlstr="";
function workflowviewcallbk(param){
	//alert("workflowviewcallbk"+param);
	var json = JSON.parse( param);
	if(json.image != null){if(jg)jg.clear();
		document.getElementById('processimage').src = ctxpath+json.image;
	  	//document.getElementById("formscrwfl").submit();
	}
	try{
	if(json.gpdfile != null){
		var xmlDoc = parseXMLDocFromString(unescape(json.gpdfile)); 
		drawGraph(xmlDoc);
		xmlstr = unescape(json.gpdfile);
	}
	}catch(e){alert('Exception:'+e);}
}

function rpccallback(param){
	// alert(param);	
	var json = JSON.parse( param);
	actiondesc_completed = "";
	actiondesc_started = "";
		if(json.WFLACTIONDESC != null){
		      jQuery('#actiondesc').val(json.WFLACTIONDESC);
		      var actiondesctmp  = json.WFLACTIONDESC;
		      jQuery('#wflid').val(json.WFLID);
		      var actiondesctable = '<table id="actiondesctbl" class="actiondesctbl"> <tr><th>Action Desc</th><th>Status</th></tr> ';
		      var rowdata = actiondesctmp.split(",");
		      for ( var i = 0; i < rowdata.length; i++) {
		    	var strcell =  rowdata[i].split("!");
		    	if(strcell.length ==2){
			    	actiondesctable += "<tr><td>"+ strcell[0]+"</td><td>"+ strcell[1]+"</td></tr>";
			    	if(strcell[1] =='C'){
			    		actiondesc_completed += strcell[0]+",";
			    	}
					if(strcell[1] =='S'){
			    		actiondesc_started +=	strcell[0]+",";	
			    	}
		    	}
			  }	
			  
		      actiondesctable += '</table>';
				jQuery('#actiondescdiv').html(actiondesctable);
				
    		  jQuery.ajax({
    			   type: "GET",
    			   url: "workflowview.action?wflid="+jQuery('#wflid').val(),
    			   success:  workflowviewcallbk
    			 });
		  	//document.getElementById("formscrwfl").submit();
		}
	}

function fnRpc(){
jQuery.ajax({
	   type: "GET",
	   url: "jsrpc.action?screenName=frmViewWfl&appid="+jQuery('#appid').val()+"&rpcid=scrflowgraph",
	   success:  rpccallback

	 });
}

var workflowxml="";
--></script>

<body>
<%@ include file="pages/header.jsp" %>
<form action="#" method="GET" id='formscrwfl'>
Application ID:<input type="text" name="appid" id="appid" value="" size=20 />
<input type="button" value="Show" onclick="fnRpc();" />
Workflow ID:<input type="text" name="wflid" id="wflid" value="" size=20 />
<input name="actiondesc" id="actiondesc" value="" style="display:none"/>
xAdjust:<input name="xadjust" id="xadjust" value="7" size="3" />
yAdjust:<input name="yadjust" id="yadjust" value="-2" size="3" />
</form>

<div id="actiondescdiv">

</div>
<div id="workflowCanvas" style="position:relative;height:566px;width:508px;">
<img src="processimage.jpg" border=0 id="processimage"/>
</div>
<script type="text/javascript" src="js/wz_jsgraphics.js"></script>
<script type="text/javascript" src="js/xmlextras.js"></script>
<script type="text/javascript">

</script>

</body>
</html>