SET DEFINE OFF;
Insert into AMS_DN
   (DN_ID, DN_PO_ID, DN_DOD, DN_DOR, DN_ORD_NO, 
    DN_WARRANTY_DATE, DN_INVOICE_NO, DN_CHQ_NO, DN_GOODS_CONDITION, DN_STATUS, 
    DN_ITEM_ID, DN_ITEM_QTY, DN_ASSET_ID)
 Values
   ('1', '7654', TO_DATE('02/01/2009 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('03/01/2010 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), '23', 
    TO_DATE('09/01/2011 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), '3', '2', '2                                       ', 'ASSETUPD  ', 
    'IT2', '1', 'IT1');
COMMIT;