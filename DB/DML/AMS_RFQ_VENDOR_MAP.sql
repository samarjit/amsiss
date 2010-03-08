SET DEFINE OFF;
Insert into AMS_RFQ_VENDOR_MAP
   (RFQID, VENDORID, VENDORNAME, TYPE_NOTIFY, INDV_STATUS, 
    SUGGEST_DLV_TIME)
 Values
   ('450', '9891', NULL, 'x~0~P~1', 'Attended', 
    8);
Insert into AMS_RFQ_VENDOR_MAP
   (RFQID, VENDORID, VENDORNAME, TYPE_NOTIFY, INDV_STATUS, 
    SUGGEST_DLV_TIME)
 Values
   ('490', '9891', NULL, 'x~0~P~1', 'Attended', 
    9);
Insert into AMS_RFQ_VENDOR_MAP
   (RFQID, VENDORID, VENDORNAME, TYPE_NOTIFY, INDV_STATUS, 
    SUGGEST_DLV_TIME)
 Values
   ('511', '9891', NULL, 'E~0~x~0', 'NotAttended', 
    10);
Insert into AMS_RFQ_VENDOR_MAP
   (RFQID, VENDORID, VENDORNAME, TYPE_NOTIFY, INDV_STATUS, 
    SUGGEST_DLV_TIME)
 Values
   ('511', '9892', NULL, 'E~0~x~0', 'NotAttended', 
    10);
COMMIT;
