SET DEFINE OFF;
Insert into AMS_MENU
   (MENU_ID, MENU_NAME, MENU_ROLE_ID, MENU_ACTION)
 Values
   (1, 'Request', 'ADMIN', 'template1.action?screenName=frmRequestList');
Insert into AMS_MENU
   (MENU_ID, MENU_NAME, MENU_ROLE_ID, MENU_ACTION)
 Values
   (6, 'Delivery Note', 'ADMIN', 'template1.action?screenName=frmDeliveryNoteList');
Insert into AMS_MENU
   (MENU_ID, MENU_NAME, MENU_ROLE_ID, MENU_ACTION)
 Values
   (3, 'Quotation', 'ADMIN', 'template1.action?screenName=frmQuotationList');
Insert into AMS_MENU
   (MENU_ID, MENU_NAME, MENU_ROLE_ID, MENU_ACTION)
 Values
   (4, 'RRF', 'ADMIN', 'template1.action?screenName=frmRRFList');
Insert into AMS_MENU
   (MENU_ID, MENU_NAME, MENU_ROLE_ID, MENU_ACTION)
 Values
   (8, 'Request', 'MANAGER', 'template1.action?screenName=frmRequestList');
Insert into AMS_MENU
   (MENU_ID, MENU_NAME, MENU_ROLE_ID, MENU_ACTION)
 Values
   (9, 'Request', 'USER', 'template1.action?screenName=frmRequestList');
Insert into AMS_MENU
   (MENU_ID, MENU_NAME, MENU_ROLE_ID, MENU_ACTION)
 Values
   (2, 'RFQ', 'ADMIN', 'template1.action?screenName=frmRFQList');
Insert into AMS_MENU
   (MENU_ID, MENU_NAME, MENU_ROLE_ID, MENU_ACTION)
 Values
   (5, 'Purchase Order', 'ADMIN', 'template1.action?screenName=frmPOList');
Insert into AMS_MENU
   (MENU_ID, MENU_NAME, MENU_ROLE_ID, MENU_ACTION)
 Values
   (10, 'Allocation', 'ADMIN', 'template1.action?screenName=frmAllocationList');
Insert into AMS_MENU
   (MENU_ID, MENU_NAME, MENU_ROLE_ID, MENU_ACTION)
 Values
   (11, 'Request for Approval', 'MANAGER', 'template1.action?screenName=frmApprovalList');
Insert into AMS_MENU
   (MENU_ID, MENU_NAME, MENU_ROLE_ID, MENU_ACTION)
 Values
   (12, 'RRF for Approval', 'MANAGER', 'template1.action?screenName=frmApprovalRRFList');
Insert into AMS_MENU
   (MENU_ID, MENU_NAME, MENU_ROLE_ID, MENU_ACTION)
 Values
   (7, 'Inventory', 'ADMIN', 'template1.action?screenName=frmAssetList');
COMMIT;
