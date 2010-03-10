SET DEFINE OFF;
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmApproval', 'template1', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmApproval.js', 'button.css,detailsScreen.css,frmRequest.css', NULL, 
    NULL, 'businesslogic.ApprovalReqBL', 'Approval Request');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmRequestList', 'template2', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmRequestList.js', 'frmRequestList.css', NULL, 
    NULL, NULL, 'Request List');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmQuotationList', 'template2', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmQuotationList.js', 'frmQuotationList.css', NULL, 
    NULL, NULL, 'Quotation List');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmRFQ', 'template1', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmRFQ.js', 'button.css,detailsScreen.css', NULL, 
    NULL, 'businesslogic.RfqBL', 'Request for Quotation Details');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmQuotation', 'template1', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmQuotation.js', 'button.css,detailsScreen.css', NULL, 
    NULL, NULL, 'Quotation Details');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmRRFList', 'template2', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmRRFList.js', 'frmRRFList.css', NULL, 
    NULL, NULL, 'Resource Request Form List');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmRRF', 'template1', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmRRF.js', 'button.css,detailsScreen.css', NULL, 
    NULL, 'businesslogic.RrfBL', 'Resource Request Form');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmRFQList', 'template2', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmRFQList.js', 'frmRFQList.css', NULL, 
    NULL, NULL, 'Request for Quotation List');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmRequest', 'template1', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmRequest.js', 'button.css,detailsScreen.css,frmRequest.css', NULL, 
    NULL, 'businesslogic.RequestBL', 'Create Request');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmApprovalList', 'template2', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmApprovalList.js', 'frmApprovalList.css', NULL, 
    'panelFields', NULL, 'Approval Request List');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmDeliveryNote', 'template1', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmDeliveryNote.js', 'button.css,detailsScreen.css', NULL, 
    NULL, NULL, 'Delivery Note Details');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmDeliveryNoteList', 'template2', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmDeliveryNoteList.js', 'frmDeliveryNoteList.css', NULL, 
    NULL, NULL, 'Delivery Note List');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmAssetList', 'template2', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmAssetList.js', 'frmAssetList.css', NULL, 
    NULL, NULL, 'Asset List');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmAsset', 'template1', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmAsset.js', 'button.css,detailsScreen.css', NULL, 
    NULL, 'businesslogic.AssetBL', 'Asset Details');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmAllocationList', 'templateAllocation', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmAllocationList.js', 'frmAllocationList.css', NULL, 
    NULL, NULL, 'Allocation');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmAllocation', 'template1', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmAllocation.js', 'button.css,detailsScreen.css', NULL, 
    NULL, NULL, 'Allocation');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmApprovalRRF', 'template1', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmApprovalRRF.js', 'button.css,detailsScreen.css', NULL, 
    NULL, 'businesslogic.ApprovalRrfBL', 'Approve RRF');
Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmApprovalRRFList', 'template2', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmApprovalRRFList.js', 'frmApprovalRRFList.css', NULL, 
    NULL, NULL, 'Approve RRF List');
INSERT INTO SCREEN ( SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, RELATEDPANEL,
BUSINESSLOGIC, SCREEN_TITLE ) VALUES ( 
'frmPO', 'template1', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmPO.js'
, 'button.css,detailsScreen.css,frmRequest.css', NULL, NULL, NULL, 'Purchase Order Details'); 

Insert into SCREEN
   (SCR_NAME, TEMPLATE_NAME, JSNAME, CSSNAME, SPLWHERECLAUSE, 
    RELATEDPANEL, BUSINESSLOGIC, SCREEN_TITLE)
 Values
   ('frmPOList', 'template2', 'jquery.js,json2.js,jquery-ui-1.7.2.custom.min.js,frmPOList.js', 'frmPOList.css', NULL, 
    NULL, NULL, 'Purchase Order List');
COMMIT;
