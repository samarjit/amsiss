SET DEFINE OFF;
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRFQList', 'panelFields', 'AMS_RFQ', NULL, '3', 
    '2', 'RFQ_ID= wflapp.APPID AND STATUS=''S''', 'SELECT RFQ_ID rfqid,RFQ_ITEM_TYPE itemtype,RFQ_ITEM_DESC itemdesc,RFQ_DEPT_ID department,RFQ_ITEM_QTY quantity,RFQ_VENDOR_ID vendorid,RFQ_STATUS rfqstatus,wflapp.WFLACTIONDESC,wflapp.WFLACTIONID,wflapp.WFLID,wflapp.STATUS FROM AMS_RFQ,USER_WFLID_APPID wflapp', NULL, NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequest', 'statusFields', 'USER_WFLID_APPID', NULL, '12', 
    '2', 'APPID = ''{panelFields.reqid}'' AND STATUS=''S''', 'select STATUS status, WFLACTIONID wflactionid, WFLACTIONDESC wflactiondesc, WFLID wflid from USER_WFLID_APPID', 'requestType', 'R', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAllocation', 'statusFields', 'USER_WFLID_APPID', 'APPID', '2', 
    '2', 'appid = ''{panelFields.allocid}'' AND STATUS=''S''', NULL, 'paneltable', 'R', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApproval', 'AmcRenewal', 'AMS_REQUEST_AMCRENEWAL', NULL, '8', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApproval', 'GeneralHardware', 'AMS_REQUEST_HARDWARE', NULL, '7', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApproval', 'HardwareTypes', 'AMS_REQUEST_HARDWARE', NULL, '3', 
    '2', 'REQID = {panelFields.reqid}', 'SELECT ASSET_TYPE_ID hardwaretype from AMS_REQUEST_HARDWARE', 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmQuotationList', 'panelFields', 'AMS_QUOTATION', 'QT_ID', '3', 
    '2', NULL, NULL, NULL, NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmQuotationList', 'buttonPanel', NULL, NULL, '2', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmQuotationList', 'searchPanel', NULL, NULL, '1', 
    '2', NULL, NULL, 'paneltable', NULL, 
    'panelFields');
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmQuotation', 'panelFields', 'AMS_QUOTATION', 'QT_ID', '1', 
    '2', NULL, NULL, 'paneltable', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmQuotation', 'buttonPanel', NULL, NULL, '4', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequestList', 'panelFields', 'AMS_REQUEST', NULL, '3', 
    '2', 'reqid = wflapp.APPID', 'SELECT EMPID empid,EMPNAME empname,MGRID mgrid,REQID reqid,requesttype requesttype,wflapp.WFLACTIONDESC,wflapp.WFLACTIONID,wflapp.WFLID,wflapp.STATUS FROM AMS_REQUEST,USER_WFLID_APPID wflapp', NULL, NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequestList', 'buttonPanel', NULL, NULL, '2', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequestList', 'searchPanel', NULL, NULL, '1', 
    '2', NULL, NULL, 'paneltable', NULL, 
    'panelFields');
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('AMS_REQUESTDETAILS', 'Panel_Heading', NULL, NULL, '1', 
    '2', NULL, NULL, NULL, 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('AMS_REQUESTDETAILS', 'Panel_RequesterDet', 'AMS_REQUESTS', NULL, '2', 
    '2', NULL, NULL, NULL, 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('AMS_REQUESTDETAILS', 'Panel_ManagerDet', 'AMS_REQUESTS', NULL, '3', 
    '2', NULL, NULL, NULL, 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('AMS_REQUESTDETAILS', 'Panel_RequestType', 'AMS_REQUESTS', NULL, '4', 
    '2', NULL, NULL, NULL, 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('AMS_REQUESTDETAILS', 'Panel_Button', NULL, NULL, '5', 
    '1', NULL, NULL, NULL, 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRRFList', 'buttonPanel', NULL, NULL, '2', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRRFList', 'searchPanel', NULL, NULL, '1', 
    '2', NULL, NULL, 'paneltable', NULL, 
    'panelFields');
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRRF', 'panelFields', 'AMS_RRF', 'RRF_ID', '1', 
    '2', NULL, NULL, 'paneltable', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRRFList', 'panelFields', 'AMS_RRF', 'RRF_ID', '3', 
    '2', NULL, NULL, NULL, NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRRF', 'buttonPanel', NULL, NULL, '4', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRRF', 'statusFields', 'USER_WFLID_APPID', NULL, '5', 
    '2', 'APPID={quotationFields.rfqid} AND STATUS=''S''', NULL, 'paneltable', 'R', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmQuotation', 'rfqFields', 'AMS_RFQ', 'RFQ_ID', '2', 
    '2', NULL, NULL, 'paneltable', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRRF', 'quotationFields', 'AMS_QUOTATION', 'QT_ID', '2', 
    '2', NULL, NULL, 'paneltable', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRFQ', 'statusFields', 'USER_WFLID_APPID', NULL, '2', 
    '2', 'APPID={panelFields.rfqid} AND WFLACTIONDESC=''RFQCreate''', NULL, 'panelfieldsStatus', 'R', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRFQ', 'panelFields', 'AMS_RFQ', 'RFQ_ID', '1', 
    '2', NULL, NULL, 'panelfields', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRFQ', 'buttonPanel', NULL, NULL, '4', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRFQList', 'buttonPanel', NULL, NULL, '2', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRFQList', 'searchPanel', NULL, NULL, '1', 
    '2', NULL, NULL, 'paneltable', NULL, 
    'panelFields');
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApproval', 'HardwareUpgrade', 'AMS_REQUEST_HARDWARE', NULL, '4', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApproval', 'NewHardware', 'AMS_REQUEST_HARDWARE', NULL, '6', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApproval', 'PcOneTransfer', 'AMS_REQUEST_PCTRANSFER', NULL, '10', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApproval', 'PcSwapTransfer', 'AMS_REQUEST_PCTRANSFER', NULL, '11', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequest', 'HardwareUpgrade', 'AMS_REQUEST_HARDWARE', NULL, '4', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequest', 'panelFields', 'AMS_REQUEST', 'REQID', '1', 
    '2', NULL, NULL, 'panelfields', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequest', 'buttonPanel', NULL, NULL, '2', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequest', 'NewHardware', 'AMS_REQUEST_HARDWARE', NULL, '6', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequest', 'Software', 'AMS_REQUEST_SOFTWARE', NULL, '5', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequest', 'HardwareTypes', 'AMS_REQUEST_HARDWARE', NULL, '3', 
    '2', 'REQID = {panelFields.reqid}', 'SELECT ASSET_TYPE_ID hardwaretype from AMS_REQUEST_HARDWARE', 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmDeliveryNote', 'buttonPanel', NULL, NULL, '4', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmDeliveryNote', 'panelFields', 'AMS_DN', 'DN_ID', '1', 
    '2', NULL, NULL, 'panelfields', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmDeliveryNote', 'statusFields', 'USER_WFLID_APPID', NULL, '2', 
    '2', 'APPID={panelFields.deliverynoteid}', NULL, 'panelfieldsStatus', 'R', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmDeliveryNoteList', 'buttonPanel', NULL, NULL, '2', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmDeliveryNoteList', 'panelFields', 'AMS_DN', 'DN_ID', '3', 
    '2', NULL, 'SELECT DN_ID deliverynoteid,DN_PO_ID purchaseorderid,DN_DOD deliverydate,DN_DOR receiveddate,DN_WARRANTY_DATE warrantydate,DN_CHQ_NO chqno,DN_INVOICE_NO invoiceno,DN_ORD_NO orderno,DN_ITEM_ID itemid,DN_ITEM_QTY itemquantity FROM AMS_DN', NULL, NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmDeliveryNoteList', 'searchPanel', NULL, NULL, '1', 
    '2', NULL, NULL, 'paneltable', NULL, 
    'panelFields');
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAsset', 'buttonPanel', NULL, NULL, '4', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAsset', 'panelFields', 'AMS_ASSET', 'ASSET_ID', '1', 
    '2', NULL, NULL, 'panelfields', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAssetList', 'buttonPanel', NULL, NULL, '2', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAssetList', 'panelFields', 'AMS_ASSET', NULL, '3', 
    '2', NULL, NULL, 'paneltable', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAssetList', 'searchPanel', NULL, NULL, '1', 
    '2', NULL, NULL, 'paneltable', NULL, 
    'panelFields');
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAsset', 'dnPanel', 'AMS_DN', 'DN_ID', '2', 
    '2', 'dn_asset_id=''{panelFields.assetid}''', 'select dn_id dnid,'''' none  from ams_dn', 'paneltable', 'R', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAllocationList', 'panelFields', 'AMS_REQUEST', NULL, '3', 
    '2', NULL, NULL, NULL, NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAllocationList', 'searchPanelAllocBtn', NULL, NULL, '1', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    'panelFields');
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAllocationList', 'searchPanel', NULL, NULL, '1', 
    '2', NULL, NULL, 'paneltable', NULL, 
    'panelFields');
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAllocationList', 'panelFieldsAsst', 'AMS_ASSET', NULL, '4', 
    '2', NULL, NULL, NULL, NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAllocationList', 'searchPanelAlloc', NULL, NULL, '1', 
    '2', NULL, NULL, 'paneltable', NULL, 
    'panelFieldsAlloc');
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAllocationList', 'searchPanelAsst', NULL, NULL, '1', 
    '2', NULL, NULL, 'paneltable', NULL, 
    'panelFieldsAsst');
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAllocationList', 'searchPanelBtn', NULL, NULL, '1', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    'panelFields');
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAllocationList', 'searchPanelAsstBtn', NULL, NULL, '1', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    'panelFields');
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAllocationList', 'panelFieldsAlloc', 'AMS_ASSET_ALLOCATION', NULL, '1', 
    '2', NULL, NULL, 'paneltable', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAllocation', 'panelFields', 'AMS_ASSET_ALLOCATION', 'RFQ_ID', '1', 
    '2', NULL, 'SELECT  ALLOC_ID allocid,ASSET_ID assetid,ASSET_SNO assetno,ASSET_HOSTNAME assethost,ASSET_USERNAME username,ASSET_IP_ADDRESS assetip FROM AMS_ASSET_ALLOCATION alloc', 'paneltable', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmAllocation', 'buttonPanel', NULL, NULL, '3', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApprovalRRF', 'buttonPanel', NULL, NULL, '4', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApprovalRRF', 'panelFields', 'AMS_RRF', 'RRF_ID', '1', 
    '2', NULL, NULL, 'panelfields', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApprovalRRF', 'statusFields', 'USER_WFLID_APPID', NULL, '5', 
    '2', 'APPID={rfqFields.rrfrfq} AND STATUS=''S''', NULL, 'panelfieldsStatus', 'R', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApprovalRRFList', 'buttonPanel', NULL, NULL, '2', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApprovalRRFList', 'panelFields', 'AMS_RRF', 'RRF_ID', '3', 
    '2', 'RRF_STATUS=''PENDAPPROVAL'' OR RRF_STATUS=''APPROVED'' OR RRF_STATUS=''REJECTED''', 'SELECT RRF_ID rrfid,RRF_QT_ID rrfquotationid,RRF_REQ_ID rrfrequestid,RRF_DATE rrfdate,RRF_STATUS rrfstatus,RRF_APRV_ID rrfmanagerid
FROM AMS_RRF', NULL, NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApprovalRRFList', 'searchPanel', NULL, NULL, '1', 
    '2', NULL, NULL, 'paneltable', NULL, 
    'panelFields');
INSERT INTO SCREEN_PANEL ( SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, PANELTYPE,
SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, RELATEDPANEL ) VALUES ( 
'frmPO', 'panelFields', 'AMS_PO', 'PO_ID', '1', '2', NULL, NULL, 'panelfields', 'RW'
, NULL); 
INSERT INTO SCREEN_PANEL ( SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, PANELTYPE,
SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, RELATEDPANEL ) VALUES ( 
'frmPO', 'statusFields', 'USER_WFLID_APPID', NULL, '3', '2', NULL, NULL, 'requestType'
, 'R', NULL); 
INSERT INTO SCREEN_PANEL ( SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, PANELTYPE,
SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, RELATEDPANEL ) VALUES ( 
'frmPO', 'buttonPanel', NULL, NULL, '2', '1', NULL, NULL, 'buttonpanel', NULL, NULL); 
INSERT INTO SCREEN_PANEL ( SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, PANELTYPE,
SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, RELATEDPANEL ) VALUES ( 
'frmPO', 'ItemDetails', 'AMS_QUOTATION', NULL, '4', '2', 'r.RRF_ID = {panelFields.porrfid} and q.QT_ID = r.RRF_QT_ID'
, 'select QT_ID qid, QT_ITEM_ID itemid, QT_ITEM_QTY itemquantity,QT_UNIT_PRICE unitprice,QT_DISCOUNT discount,QT_TOTAL_AMT totalprice from AMS_QUOTATION q,AMS_PO p,AMS_RRF  r'
, 'panelfields', 'R', NULL); 


Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmPOList', 'panelFields', 'AMS_PO', 'PO_ID', '3', 
    '2', NULL, NULL, 'paneltable', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmPOList', 'searchPanel', NULL, NULL, '1', 
    '2', NULL, NULL, 'paneltable', NULL, 
    'panelFields');
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmPOList', 'buttonPanel', NULL, NULL, '2', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApprovalRRF', 'rfqFields', 'AMS_QUOTATION', 'QT_ID', '2', 
    '2', NULL, NULL, 'panelfields', 'R', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequest', 'GeneralHardware', 'AMS_REQUEST_HARDWARE', NULL, '7', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequest', 'AmcRenewal', 'AMS_REQUEST_AMCRENEWAL', NULL, '8', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequest', 'PcTransferType', 'AMS_REQUEST_PCTRANSFER', NULL, '9', 
    '2', 'REQID = {panelFields.reqid}', 'SELECT TRANSFER_TYPE transfertypesel from AMS_REQUEST_PCTRANSFER', 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequest', 'PcOneTransfer', 'AMS_REQUEST_PCTRANSFER', NULL, '10', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequest', 'PcSwapTransfer', 'AMS_REQUEST_PCTRANSFER', NULL, '11', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequest', 'ReleaseResource', 'AMS_REQUEST_RELEASE_RESOURCE', NULL, '12', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmRequest', 'SoftwareTransfer', 'AMS_REQUEST_SOFTWARE_TRANSFER', NULL, '13', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApproval', 'PcTransferType', 'AMS_REQUEST_PCTRANSFER', NULL, '9', 
    '2', 'REQID = {panelFields.reqid}', 'SELECT TRANSFER_TYPE transfertypesel from AMS_REQUEST_PCTRANSFER', 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApproval', 'ReleaseResource', 'AMS_REQUEST_RELEASE_RESOURCE', NULL, '12', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApproval', 'Software', 'AMS_REQUEST_SOFTWARE', NULL, '5', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApproval', 'SoftwareTransfer', 'AMS_REQUEST_SOFTWARE_TRANSFER', NULL, '13', 
    '2', NULL, NULL, 'requestType', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApproval', 'buttonPanel', NULL, NULL, '2', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApproval', 'panelFields', 'AMS_REQUEST', 'REQID', '1', 
    '2', NULL, NULL, 'panelfields', 'RW', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApproval', 'statusFields', 'USER_WFLID_APPID', NULL, '12', 
    '2', 'APPID = ''{panelFields.reqid}''', 'select STATUS status, WFLACTIONID wflactionid, WFLACTIONDESC wflactiondesc, WFLID wflid from USER_WFLID_APPID', 'requestType', 'R', 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApprovalList', 'buttonPanel', NULL, NULL, '2', 
    '1', NULL, NULL, 'buttonpanel', NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApprovalList', 'panelFields', 'AMS_REQUEST', 'REQID', '3', 
    '2', '(STATUS=''PENDAPPROVAL'' OR STATUS=''APPROVED'' OR STATUS=''REJECTED'')', NULL, NULL, NULL, 
    NULL);
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmApprovalList', 'searchPanel', NULL, NULL, '1', 
    '2', NULL, NULL, 'paneltable', NULL, 
    'panelFields');
Insert into SCREEN_PANEL
   (SCR_NAME, PANEL_NAME, TABLE_NAME, PK_NAME, SORTORDER, 
    PANELTYPE, SPLWHERECLAUSE, SELQUERY, CSS_CLASS, RW_FLG, 
    RELATEDPANEL)
 Values
   ('frmDeliveryNote', 'popanel', 'AMS_PO', 'PO_ID', '1', 
    '2', NULL, NULL, 'panelfields', 'R', 
    NULL);
COMMIT;
