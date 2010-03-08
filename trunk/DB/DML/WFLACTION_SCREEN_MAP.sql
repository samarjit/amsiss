SET DEFINE OFF;
Insert into WFLACTION_SCREEN_MAP
   (WFLACTIVITY, SCREENID)
 Values
   ('CaptureRequest', '/template1.action?screenName=frmRequestList');
Insert into WFLACTION_SCREEN_MAP
   (WFLACTIVITY, SCREENID)
 Values
   ('SendMail', '/pages/sendmail.jsp?screenName=frmReq');
Insert into WFLACTION_SCREEN_MAP
   (WFLACTIVITY, SCREENID)
 Values
   ('Approve', '/template1.action?screenName=frmRequestList');
Insert into WFLACTION_SCREEN_MAP
   (WFLACTIVITY, SCREENID)
 Values
   ('RFQCreate', '/template1.action?screenName=frmRFQList');
Insert into WFLACTION_SCREEN_MAP
   (WFLACTIVITY, SCREENID)
 Values
   ('CreateRRF', '/template1.action?screenName=frmRFQList');
Insert into WFLACTION_SCREEN_MAP
   (WFLACTIVITY, SCREENID)
 Values
   ('CreatePO', '/template1.action?screenName=frmPOList');
Insert into WFLACTION_SCREEN_MAP
   (WFLACTIVITY, SCREENID)
 Values
   ('RRFApproval', '/template1.action?screenName=frmRRFList');
Insert into WFLACTION_SCREEN_MAP
   (WFLACTIVITY, SCREENID)
 Values
   ('End', '/template1.action?screenName=frmRequestList');
COMMIT;
