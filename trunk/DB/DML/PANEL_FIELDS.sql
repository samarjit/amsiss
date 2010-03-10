SET DEFINE OFF;
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'panelFields', '6', 'Action Desc', 'WFLACTIONDESC', 
    'WFLACTIONDESC', 'VARCHAR', NULL, NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'panelFields', '7', 'Action ID', 'WFLACTIONID', 
    'WFLACTIONID', 'VARCHAR', NULL, NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'panelFields', '8', 'Worlflow ID', 'WFLID', 
    'WFLID', 'VARCHAR', NULL, NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'panelFields', '9', 'Status', 'STATUS', 
    'STATUS', 'VARCHAR', NULL, NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'buttonPanel', '2', 'Create Request', 'createReq', 
    'createReq', NULL, NULL, 'onclick=''clearWhereClause();fnCreateActivity("CR");''', NULL, 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'buttonPanel', '3', 'View Details', 'viewdetails', 
    'viewdetails', NULL, NULL, 'onclick=''return viewdetails();''', NULL, 
    '2', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'buttonPanel', '1', 'Search', 'search', 
    'search', NULL, NULL, 'onclick=''search();''', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'searchPanel', '1', 'Employee ID', 'sempid', 
    'sempid', 'VARCHAR', 'EMPID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'searchPanel', '2', 'Employee Name', 'sempname', 
    'sempname', 'VARCHAR', 'EMPNAME', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'panelFields', '1', 'Employee ID', 'empid', 
    'empid', 'VARCHAR', 'EMPID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'searchPanel', '3', 'Manager Id', 'smgrid', 
    'smgrid', 'VARCHAR', 'MGRID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'panelFields', '2', 'Employee Name', 'empname', 
    'empname', 'VARCHAR', 'EMPNAME', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'searchPanel', '4', 'Request ID', 'srequestid', 
    'srequestid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'panelFields', '3', 'Manager Id', 'mgrid', 
    'mgrid', 'VARCHAR', 'MGRID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'panelFields', '4', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'panelFields', '5', 'Request Type', 'requesttype', 
    'requesttype', 'VARCHAR', 'requestType', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequestList', 'searchPanel', '5', 'Request Type', 'requesttype', 
    'requesttype', 'VARCHAR', 'requesttype', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'buttonPanel', '2', 'View Details', 'viewdetails', 
    'viewdetails', NULL, NULL, 'onclick=''return viewdetails(this);''', NULL, 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'buttonPanel', '1', 'Search', 'search', 
    'search', NULL, NULL, 'onclick=''search();''', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'buttonPanel', '4', 'Create RRF', 'createrrf', 
    'createrrf', NULL, NULL, 'onclick=''return viewdetails(this);''', NULL, 
    '3', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'buttonPanel', '3', 'Compare', 'compare', 
    'compare', NULL, NULL, NULL, NULL, 
    '2', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'searchPanel', '1', 'Quotation ID', 'squotationid', 
    'squotationid', 'VARCHAR', 'QT_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'searchPanel', '2', 'Item ID', 'sitemid', 
    'sitemid', 'VARCHAR', 'QT_ITEM_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'panelFields', '1', 'Quotation ID', 'quotationid', 
    'quotationid', 'VARCHAR', 'QT_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'panelFields', '2', 'Item ID', 'itemid', 
    'itemid', 'VARCHAR', 'QT_ITEM_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'searchPanel', '3', 'Vendor ID', 'svendorid', 
    'svendorid', 'VARCHAR', 'QT_RFQ_VENDOR_ID', NULL, NULL, 
    '0', '2', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'panelFields', '3', 'Vendor ID', 'vendorid', 
    'vendorid', 'VARCHAR', 'QT_RFQ_VENDOR_ID', NULL, NULL, 
    '0', '2', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'searchPanel', '4', 'Quotation Date', 'squotationDate', 
    'squotationdate', 'DATE', 'QT_DATE', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'panelFields', '4', 'Quotation Date', 'quotationDate', 
    'quotationdate', 'DATE', 'QT_DATE', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'searchPanel', '5', 'Quotation Ref', 'squotationref', 
    'squotationref', 'VARCHAR', 'QT_REF', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'panelFildes', '5', 'Quotation Ref', 'quotationref', 
    'quotationref', 'VARCHAR', 'QT_REF', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'searchPanel', '6', 'Date of Delivery', 'sdateofdelivery', 
    'sdateofdelivery', 'DATE', 'QT_DOD', NULL, NULL, 
    '1', '2', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'panelFields', '6', 'Date of Delivery', 'dateofdelivery', 
    'dateofdelivery', 'DATE', 'QT_DOD', NULL, NULL, 
    '1', '2', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'panelFields', '8', 'Currency', 'currency', 
    'currency', 'VARCHAR', 'QT_CURR_ID', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'panelFields', '7', 'Total Amount', 'totalamount', 
    'totalamount', 'FLOAT', 'QT_TOTAL_AMT', NULL, NULL, 
    '2', '2', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotationList', 'panelFields', '9', 'Status', 'qtstatus', 
    'qtstatus', 'CHAR', 'QT_STATUS', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'buttonPanel', '1', 'Save', 'btnSave', 
    'btnSave', NULL, NULL, ' onclick=''quotSave();''', NULL, 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'buttonPanel', '2', 'Modify', 'btnModify', 
    'btnModify', NULL, NULL, ' onclick="updateData(this);"
', NULL, 
    '2', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'buttonPanel', '3', 'Delete', 'btnDelete', 
    'btnDelete', NULL, NULL, 'onclick="deleteData();"', NULL, 
    '3', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFields', '1', 'Quotation ID', 'quotationid', 
    'quotationid', 'VARCHAR', 'QT_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFields', '2', 'Item ID', 'itemid', 
    'itemid', 'VARCHAR', 'QT_ITEM_ID', NULL, NULL, 
    '1', '0', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFields', '3', 'Vendor ID', 'vendorid', 
    'vendorid', 'VARCHAR', 'QT_RFQ_VENDOR_ID', NULL, NULL, 
    '1', '0', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFields', '4', 'Quotation Date', 'quotationdate', 
    'quotationdate', 'DATE', 'QT_DATE', NULL, NULL, 
    '0', '2', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFields', '5', 'Quotation Ref', 'quotationref', 
    'quotationref', 'VARCHAR', 'QT_REF', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFields', '6', 'Date of Delivery', 'dateofdelivery', 
    'dateofdelivery', 'DATE', 'QT_DOD', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFields', '7', 'Currency', 'currency', 
    'currency', 'VARCHAR', 'QT_CURR_ID', NULL, 'select curr_id as val, curr_id as des from ams_currency', 
    '3', '1', NULL, 'DROPDOWN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFields', '8', 'Total Amount', 'totalamount', 
    'totalamount', 'FLOAT', 'QT_TOTAL_AMT', NULL, NULL, 
    '6', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFields', '9', 'Status', 'qtstatus', 
    'qtstatus', 'CHAR', 'QT_STATUS', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFields', '10', 'RFQ ID', 'rfqid', 
    'rfqid', 'VARCHAR', 'QT_RFQ_ID', NULL, NULL, 
    '7', '1', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFields', '11', 'Item Quantity', 'itemquantity', 
    'itemquantity', 'INT', 'QT_ITEM_QTY', NULL, NULL, 
    '5', '0', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFields', '12', 'Unit Price', 'unitprice', 
    'unitprice', 'FLOAT', 'QT_UNIT_PRICE', 'onBlur="updateTotal();"', NULL, 
    '3', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFileds', '13', 'Discount', 'discount', 
    'discount', 'FLOAT', 'QT_DISCOUNT', 'onBlur="updateTotal();"', NULL, 
    '5', '2', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFields', '14', 'Misc Charge', 'mischarge', 
    'mischarge', 'VARCHAR', 'QT_MISE', 'onBlur="updateTotal();"', NULL, 
    '5', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFields', '15', 'Comments', 'comments', 
    'comments', 'VARCHAR', 'QT_COMMENTS', NULL, NULL, 
    '7', '0', NULL, 'TEXTAREA', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRFList', 'searchPanel', '1', 'RRF ID', 'srrfid', 
    'srrfid', 'VARCHAR', 'RRF_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRFList', 'searchPanel', '3', 'RRF Date', 'srrfdate', 
    'srrfdate', 'VARCHAR', 'RRF_DATE', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRFList', 'searchPanel', '4', 'Status', 'sstatus', 
    'sstatus', 'CHAR', 'RRF_STATUS', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRFList', 'panelFields', '6', 'Approvar ID', 'approvarid', 
    'approvarid', 'VARCHAR', 'RRF_APRV_ID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRFList', 'searchPanel', '2', 'Quotation ID', 'squotationid', 
    'squotationid', 'VARCHAR', 'RRF_QT_ID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRFList', 'panelFields', '5', 'RRF Date', 'rrfdate', 
    'rrfdate', 'DATE', 'RRF_DATE', NULL, NULL, 
    '1', '2', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRFList', 'panelFields', '7', 'Status', 'status', 
    'status', 'CHAR', 'RRF_STATUS', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'quotationFields', '2', 'Item ID', 'itemid', 
    'itemid', 'VARCHAR', 'QT_ITEM_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRFList', 'panelFields', '3', 'Request ID', 'requestid', 
    'requestid', 'VARCHAR', 'RRF_REQ_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRFList', 'panelFields', '1', 'RRF ID', 'rrfid', 
    'rrfid', 'VARCHAR', 'RRF_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRFList', 'buttonPanel', '1', 'Search', 'search', 
    'search', NULL, NULL, 'onclick=''search();''', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRFList', 'buttonPanel', '2', 'View Details', 'viewdetails', 
    'viewdetails', NULL, NULL, 'onclick=''return viewdetails();''', NULL, 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'panelFields', '1', 'RRF ID', 'rrfid', 
    'rrfid', 'VARCHAR', 'RRF_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'panelFields', '2', 'Request ID', 'requestid', 
    'requestid', 'VARCHAR', 'RRF_REQ_ID', NULL, 'select reqid as val, reqid as des from ams_request where status=''Applied''', 
    '0', '1', NULL, 'DROPDOWN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'quotationFields', '1', 'Quotation ID', 'quotationid', 
    'rrfquotationid', 'VARCHAR', 'QT_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'panelFields', '4', 'Status', 'status', 
    'status', 'VARCHAR', 'RRF_STATUS', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'panelFields', '5', 'Approvar ID', 'approvarid', 
    'approvarid', 'VARCHAR', 'RRF_APRV_ID', NULL, 'select empid as val, empid as des from ams_employee where roleid=''MANAGER''', 
    '2', '0', NULL, 'DROPDOWN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'panelFields', '6', 'RRF Date', 'rrfdate', 
    'rrfdate', 'DATE', 'RRF_DATE', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'buttonPanel', '1', 'Modify', 'modify', 
    'modify', NULL, NULL, ' onclick="updateData(this);"
', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'buttonPanel', '2', 'Delete', 'delete', 
    'delete', NULL, NULL, 'onclick="deleteData();"', NULL, 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'buttonPanel', '3', 'Submit RRF', 'submit', 
    'submit', NULL, NULL, ' onclick=''rrfSubmit();''', NULL, 
    '4', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'buttonPanel', '4', ' Cancel RRF', 'cancel', 
    'cancel', NULL, NULL, ' onclick=''rrfCancel();''', NULL, 
    '2', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'buttonPanel', '5', 'Save', 'save', 
    'save', NULL, NULL, ' onclick=''rrfSave();''', NULL, 
    '3', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'statusFields', '1', 'Status', 'Status', 
    'Status', 'VARCHAR', 'STATUS', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'statusFields', '2', 'Wfl ActionID', 'wflactionid', 
    'wflactionid', 'NUMBER', 'WFLACTIONID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'statusFields', '1', 'Status', 'Status', 
    'Status', 'VARCHAR', 'STATUS', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'statusFields', '3', 'Wfl Action Desc', 'wflactiondesc', 
    'wflactiondesc', 'VARCHAR', 'WFLACTIONDESC', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'statusFields', '4', 'Wfl ID', 'wflid', 
    'wflid', 'VARCHAR', 'WFLID', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'statusFields', '2', 'Wfl ActionID', 'wflactionid', 
    'wflactionid', 'NUMBER', 'WFLACTIONID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'statusFields', '3', 'Wfl Action Desc', 'wflactiondesc', 
    'wflactiondesc', 'VARCHAR', 'WFLACTIONDESC', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'statusFields', '4', 'Wfl ID', 'wflid', 
    'wflid', 'VARCHAR', 'WFLID', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'panelFields', '3', 'Quotation ID', 'quotationid', 
    'quotationid', 'VARCHAR', 'RRF_QT_ID', NULL, NULL, 
    '2', '1', NULL, 'HIDDEN', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'quotationFields', '3', 'Currency', 'currency', 
    'currency', 'VARCHAR', 'QT_CURR_ID', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'quotationFields', '4', 'Discount', 'discount', 
    'discount', 'INT', 'QT_DISCOUNT', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'quotationFields', '5', 'Total Amount', 'totalamt', 
    'totalamt', 'INT', 'QT_TOTAL_AMT', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'quotationFields', '6', 'Quantity', 'quantity', 
    'quantity', 'INT', 'QT_ITEM_QTY', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'quotationFields', '7', 'Unit Price', 'unitprice', 
    'unitprice', 'INT', 'QT_UNIT_PRICE', NULL, NULL, 
    '3', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'quotationFields', '8', 'Mise Charge', 'mise', 
    'mise', 'VARCHAR', 'QT_MISE', NULL, NULL, 
    '3', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'buttonPanel', '4', 'BackToList', 'btnBack', 
    'btnBack', NULL, NULL, ' onclick="backToList();"', NULL, 
    '4', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'rfqFields', '1', 'RFQ ID', 'rfqid', 
    'rfqrfqid', 'VARCHAR', 'RFQ_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'rfqFields', '2', 'Item ID', 'itemID', 
    'rfqitemID', 'VARCHAR', 'RFQ_ITEM_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'rfqFields', '3', 'Item Quantity', 'quantity', 
    'rfqquantity', 'VARCHAR', 'RFQ_ITEM_QTY', NULL, NULL, 
    '0', '2', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'rfqFields', '4', 'Vendor ID', 'vendorid', 
    'rfqvendorid', 'VARCHAR', 'RFQ_VENDOR_ID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRFList', 'panelFields', '4', 'Quotation ID', 'quotationid', 
    'quotationid', 'VARCHAR', 'RRF_QT_ID', NULL, NULL, 
    '1', '3', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'panelFields', '8', 'Action Desc', 'WFLACTIONDESC', 
    'WFLACTIONDESC', 'VARCHAR', NULL, NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmQuotation', 'panelFields', '16', 'Discount', 'discount', 
    'discount', 'NUMBER', 'QT_DISCOUNT', 'onBlur="updateTotal();"', NULL, 
    '5', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'panelFields', '9', 'Action ID', 'WFLACTIONID', 
    'WFLACTIONID', 'VARCHAR', NULL, NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'panelFields', '10', 'Worlflow ID', 'WFLID', 
    'WFLID', 'VARCHAR', NULL, NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'panelFields', '11', 'Status', 'STATUS', 
    'STATUS', 'VARCHAR', NULL, NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'panelFields', '5', 'Quantity', 'quantity', 
    'quantity', 'VARCHAR', 'RFQ_ITEM_QTY', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'panelFields', '1', 'RFQ ID', 'rfqid', 
    'rfqid', 'VARCHAR', 'RFQ_ID', ' ', ' ', 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'panelFields', '2', 'Item Type', 'itemtype', 
    'itemtype', 'VARCHAR', 'RFQ_ITEM_TYPE', ' ', ' ', 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'panelFields', '6', 'Vendor Id', 'vendorid', 
    'vendorid', 'VARCHAR', 'RFQ_VENDOR_ID', ' ', ' ', 
    '2', '1', NULL, 'HIDDEN', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'buttonPanel', '9', 'Submit', 'btnsubmit', 
    'btnSubmit', ' ', ' ', ' onclick=''submitScreenFlowactivity()''', ' ', 
    '6', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'buttonPanel', '2', 'Save', 'btnSave', 
    'btnSave', ' ', ' ', ' onclick=''reqSave();''', ' ', 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'buttonPanel', '3', 'Modify', 'btnModify', 
    'btnModify', ' ', ' ', ' onclick="updateData(this);"
', ' ', 
    '2', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'buttonPanel', '1', 'Back', 'btnBack', 
    'btnBack', ' ', ' ', 'onclick=''javscript:location.href="/ams/template1.action?screenName=frmRFQList"''', ' ', 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'buttonPanel', '4', 'Delete', 'btnDelete', 
    'btnDelete', ' ', ' ', 'onclick=''deleteData();''', ' ', 
    '3', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'panelFields', '3', 'Item Description', 'itemdesc', 
    'itemdesc', 'VARCHAR', 'RFQ_ITEM_DESC', NULL, NULL, 
    '1', '0', NULL, 'TEXTAREA', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'panelFields', '4', 'Department', 'department', 
    'department', 'VARCHAR', 'RFQ_DEPT_ID', 'onchange=''createVendorDropdownAjax();''', 'select DEPT_ID VAL,DEPT_NAME DES from ams_DEPARTMENT', 
    '1', '1', NULL, 'DROPDOWN', 'Y', 
    NULL, NULL, 'style=''width:145px''');
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'panelFields', '7', 'RFQ Status', 'rfqstatus', 
    'rfqstatus', 'VARCHAR', 'RFQ_STATUS', NULL, NULL, 
    '3', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'buttonPanel', '2', 'Create RFQ', 'createRFQ', 
    'createRFQ', NULL, NULL, 'onclick=''clearWhereClause();fnCreateActivity("CRFQ");''', NULL, 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'buttonPanel', '3', 'View Details', 'viewdetails', 
    'viewdetails', NULL, NULL, 'onclick=''return viewdetails(this);''', NULL, 
    '2', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'buttonPanel', '1', 'Search', 'search', 
    'search', NULL, NULL, 'onclick=''search();''', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'searchPanel', '1', 'RFQ ID', 'rfqid', 
    'rfqid', 'VARCHAR', 'RFQ_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'searchPanel', '2', 'Item Desc', 'itemdesc', 
    'itemdesc', 'VARCHAR', 'RFQ_ITEM_DESC', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'panelFields', '1', 'RFQ ID', 'rfqid', 
    'rfqid', 'VARCHAR', 'RFQ_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'searchPanel', '3', 'Department', 'department', 
    'department', 'VARCHAR', 'RFQ_DEPT_ID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'panelFields', '2', 'Item Type', 'itemtype', 
    'itemtype', 'VARCHAR', 'RFQ_ITEM_TYPE', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'searchPanel', '4', 'Vendor', 'vendor', 
    'vendor', 'VARCHAR', 'RFQ_VENDOR_ID', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'panelFields', '3', 'Item Description', 'itemdesc', 
    'itemdesc', 'VARCHAR', 'RFQ_ITEM_DESC', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'panelFields', '4', 'Department', 'department', 
    'department', 'VARCHAR', 'RFQ_DEPT_ID', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'panelFields', '5', 'Quantity', 'quatity', 
    'quantity', 'VARCHAR', 'RFQ_ITEM_QTY', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'searchPanel', '5', 'RFQ Status', 'status', 
    'status', 'VARCHAR', 'RFQ_STATUS', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'buttonPanel', '6', 'Map Suggested Vendors', 'btnVendorMap', 
    'btnVendorMap', ' ', ' ', ' onclick=''fnMapVendors()''', ' ', 
    '5', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'statusFields', '1', 'Status', 'Status', 
    'Status', 'VARCHAR', 'STATUS', ' ', ' ', 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'statusFields', '2', 'Wfl ActionID', 'wflactionid', 
    'wflactionid', 'NUMBER', 'WFLACTIONID', ' ', ' ', 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'statusFields', '3', 'Wfl Action Desc', 'wflactiondesc', 
    'wflactiondesc', 'VARCHAR', 'WFLACTIONDESC', ' ', ' ', 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'statusFields', '4', 'Wfl ID', 'wflid', 
    'wflid', 'VARCHAR', 'WFLID', ' ', ' ', 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'panelFields', '7', 'RFQ Status', 'rfqstatus', 
    'rfqstatus', 'VARCHAR', 'RFQ_STATUS', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'panelFields', '6', 'Vendor Id', 'vendorid', 
    'vendorid', 'VARCHAR', 'RFQ_VENDOR_ID', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQList', 'buttonPanel', '4', 'Capture Quotation', 'capturequotation', 
    'capturequotation', NULL, NULL, 'onclick=''return viewdetails(this);''', NULL, 
    '3', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'buttonPanel', '8', 'Show Mapped Vendors', 'btnsubmit', 
    'btnSubmitselAll', ' ', ' ', ' onclick=''populateVendors()''', ' ', 
    '7', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'quotationFields', '9', 'RFQ ID', 'rfqid', 
    'rfqid', 'VARCHAR', 'QT_RFQ_ID', NULL, NULL, 
    '4', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'panelFields', '9', 'Remarks', 'remarks', 
    'remarks', 'VARCHAR', 'REMARKS', NULL, NULL, 
    '4', '0', NULL, 'TEXTAREA', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'NewHardware', '4', 'Make', 'make', 
    'make', 'VARCHAR', 'MAKE', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'NewHardware', '5', 'Quantity', 'quantity', 
    'quantity', 'INTEGER', 'QUANTITY', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'NewHardware', '7', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '2', '1', NULL, 'HIDDEN', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'HardwareUpgrade', '1', 'Asset ID', 'assetidhu', 
    'assetidhu', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'HardwareUpgrade', '6', 'Processor', 'processorhu', 
    'processorhu', 'VARCHAR', 'PROCESSOR', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'HardwareUpgrade', '3', 'RAM', 'ram', 
    'ramhu', 'VARCHAR', 'RAM', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'HardwareUpgrade', '4', 'Hard Disk', 'harddisk', 
    'harddisk', 'VARCHAR', 'HARDDISK', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'HardwareUpgrade', '5', 'Description', 'descriptionhu', 
    'descriptionhu', 'VARCHAR', 'DESCRIPTION', NULL, NULL, 
    '2', '0', NULL, 'TEXTAREA', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'Software', '1', 'Reference Request ID', 'refreqid', 
    'refreqid', 'VARCHAR', 'REF_REQID', NULL, NULL, 
    '0', '0', NULL, 'DROPDOWN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'Software', '2', 'Asset ID', 'assetidsw', 
    'assetidsw', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'Software', '3', 'Software', 'software', 
    'software', 'VARCHAR', 'SOFTWARE', NULL, 'select ASSET_NAME AS VAL, ASSET_NAME AS DES from AMS_ASSET_AVAILABILITY where ASSET_TYPE_ID = ''SW''', 
    '1', '0', NULL, 'DROPDOWN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'Software', '4', 'Request Id', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '1', NULL, 'HIDDEN', NULL, 
    'Y', 'Y', NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'HardwareUpgrade', '7', 'Request Id', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '3', '0', NULL, 'HIDDEN', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'HardwareTypes', '1', 'Hardware Type', 'hardwaretype', 
    'hardwaretype', 'VARCHAR', 'ASSET_TYPE_NAME', 'onChange=''javascript:generatesubcallforhardware(this);''', 'SELECT ASSET_TYPE_ID AS VAL,ASSET_TYPE_NAME AS DES from AMS_ASSET_TYPE where ASSET_TYPE_REF = ''HW''', 
    '0', '0', NULL, 'DROPDOWN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'GeneralHardware', '1', 'Quantity', 'quantity', 
    'quantity', 'VARCHAR', 'QUANTITY', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'GeneralHardware', '2', 'Description', 'descriptiongh', 
    'descriptiongh', 'VARCHAR', 'DESCRIPTION', NULL, NULL, 
    '1', '0', NULL, 'TEXTAREA', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'GeneralHardware', '3', 'Hardware type', 'hardwaretypegeneral', 
    'hardwaretypegeneral', 'VARCHAR', 'ASSET_TYPE_ID', NULL, NULL, 
    '0', '1', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'GeneralHardware', '4', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '1', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'AmcRenewal', '1', 'Asset ID', 'assetidamc', 
    'assetidamc', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'AmcRenewal', '2', 'Delivery Note Number', 'deliverynote', 
    'deliverynote', 'VARCHAR', 'DELIVERY_NOTE', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'AmcRenewal', '3', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '0', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'AmcRenewal', '4', 'Description', 'descriptionmc', 
    'descriptionamc', 'VARCHAR', 'DESCRIPTION', NULL, NULL, 
    '1', '1', NULL, 'TEXTAREA', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'PcTransferType', '1', 'Transfer Type', 'transfertypesel', 
    'transfertypesel', 'VARCHAR', NULL, 'onChange=''javascript:generatesubcallfortransfer(this);''', NULL, 
    '0', '0', NULL, 'DROPDOWN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'PcOneTransfer', '1', 'User ID', 'user1', 
    'user1', 'VARCHAR', 'USER1', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'PcOneTransfer', '2', 'Asset ID', 'assetidpco', 
    'assetidpco', 'VARCHAR', 'PCTRANSFER_USER1', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'PcOneTransfer', '3', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '0', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'PcSwapTransfer', '1', 'User ID 1', 'userid1', 
    'userid1', 'VARCHAR', 'USER1', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'PcSwapTransfer', '2', 'Asset ID 1', 'assetid1', 
    'assetid1', 'VARCHAR', 'PCTRANSFER_USER1', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'PcSwapTransfer', '4', 'Asset ID 2', 'assetid2', 
    'assetid2', 'VARCHAR', 'PCTRANSFER_USER2', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'PcSwapTransfer', '3', 'User ID 2', 'userid2', 
    'userid2', 'VARCHAR', 'USER2', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'PcSwapTransfer', '5', 'Transfer Type', 'transfertypeswap', 
    'transfertypeswap', 'VARCHAR', 'TRANSFER_TYPE', NULL, NULL, 
    '2', '0', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'PcOneTransfer', '4', 'Transfer Type', 'transfertypeone', 
    'transfertypeone', 'VARCHAR', 'TRANSFER_TYPE', NULL, NULL, 
    '1', '1', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'PcSwapTransfer', '6', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '2', '1', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'ReleaseResource', '1', 'Asset ID', 'assetidrr', 
    'assetidrr', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'ReleaseResource', '2', 'Description', 'descriptionrr', 
    'descriptionrr', 'VARCHAR', 'DESCRIPTION', NULL, NULL, 
    '0', '1', NULL, 'TEXTAREA', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'ReleaseResource', '3', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '0', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'buttonPanel', '1', 'Search', 'btnsearch', 
    'btnsearch', NULL, NULL, 'onclick=''search();''', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'buttonPanel', '2', 'View Details', 'btnviewdetails', 
    'btnviewdetails', NULL, NULL, 'onclick="viewdetails();"', NULL, 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'panelFields', '1', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'panelFields', '2', 'Request Date', 'requestdate', 
    'requestdate', 'DATE', 'REQDATE', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'panelFields', '3', 'Request Type', 'requesttype', 
    'requesttype', 'VARCHAR', 'REQUESTTYPE', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'panelFields', '4', 'Request Status', 'requeststatus', 
    'requeststatus', 'VARCHAR', 'STATUS', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'panelFields', '5', 'Employee ID', 'empid', 
    'empid', 'VARCHAR', 'EMPID', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'panelFields', '6', 'Employee Name', 'empname', 
    'empname', 'VARCHAR', 'EMPNAME', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'panelFields', '7', 'Manager ID', 'mgrid', 
    'mgrid', 'VARCHAR', 'MGRID', NULL, NULL, 
    '3', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'panelFields', '8', 'Manager Name', 'managername', 
    'managername', 'VARCHAR', 'MGRNAME', NULL, NULL, 
    '3', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'searchPanel', '1', 'Request ID', 'srequestid', 
    'srequestid', 'VARCHAR', 'REQID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'searchPanel', '2', 'Request Date', 'srequestdate', 
    'srequestdate', 'DATE', 'REQDATE', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'searchPanel', '3', 'Request Type', 'srequesttype', 
    'srequesttype', 'VARCHAR', 'REQUESTTYPE', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'searchPanel', '4', 'Request Status', 'srequeststatus', 
    'srequeststatus', 'VARCHAR', 'STATUS', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'searchPanel', '5', 'Employee ID', 'sempid', 
    'sempid', 'VARCHAR', 'EMPID', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'Software', '5', 'Description', 'descriptionsw', 
    'descriptionsw', 'VARCHAR', 'DESCRIPTION', NULL, NULL, 
    '2', '0', NULL, 'TEXTAREA', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'panelFields', '9', 'Department Name', 'departmentname', 
    'departmentname', 'VARCHAR', 'DEPARTMENTNAME', NULL, NULL, 
    '4', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'searchPanel', '6', 'Department Name', 'sdepartmentname', 
    'sdepartmentname', 'VARCHAR', 'DEPARTMENTNAME', NULL, NULL, 
    '4', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalList', 'searchPanel', '7', 'Manager ID', 'smanagerid', 
    'smanagerid', 'VARCHAR', 'mgrid', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'panelFields', '8', 'Department', 'departmentname', 
    'departmentname', 'VARCHAR', 'departmentname', NULL, NULL, 
    '3', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'panelFields', '6', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'reqid', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, 'style="visibility:hidden"');
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'panelFields', '1', 'Employee Id', 'EmpId', 
    'empid', 'VARCHAR', 'empid', ' ', NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, 'disabled="disabled"');
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'panelFields', '2', 'Employee Name', 'EmpName', 
    'empname', 'VARCHAR', 'empname', ' ', NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, 'disabled="disabled"');
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'panelFields', '7', 'Request Type', 'requesttype', 
    'requesttype', 'VARCHAR', 'requesttype', ' onChange=''javascript:generatecall(this);''', 'SELECT REQUESTTYPE AS VAL,REQUESTTYPE AS DES  from AMS_REQUEST_TYPE', 
    '3', '0', NULL, 'DROPDOWN', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'buttonPanel', '1', 'Approve', 'btnApprove', 
    'btnApprove', ' ', ' ', ' onclick=''reqApproval();''', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'panelFields', '3', 'Manager Id', 'mgrid', 
    'mgrid', 'VARCHAR', 'mgrid', 'onChange=''javascript:generatename(this);''', NULL, 
    '1', '0', NULL, 'DROPDOWN', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'panelFields', '4', 'Manager Name', 'mgrname', 
    'mgrname', 'VARCHAR', 'mgrname', ' ', NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, 'disabled="disabled"');
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'panelFields', '5', 'Request Date', 'reqdate', 
    'reqdate', 'DATE', 'reqdate', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, 'disabled="disabled"');
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'NewHardware', '1', 'Processor', 'processornh', 
    'processornh', 'VARCHAR', 'PROCESSOR', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'buttonPanel', '1', 'Modify', 'btnModify', 
    'btnModify', NULL, NULL, 'onclick=''updateData(this);''', NULL, 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'buttonPanel', '2', 'Delete', 'btnDelete', 
    'btnDelete', NULL, NULL, 'onclick=''deleteData();''', NULL, 
    '2', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'buttonPanel', '3', 'Save', 'btnSave', 
    'btnSave', NULL, NULL, 'onclick=''dnSave();''', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'panelFields', '1', 'Delivery Note ID', 'deliverynoteid', 
    'deliverynoteid', 'VARCHAR', 'DN_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'panelFields', '10', 'Purchase Order ID', 'purchaseorderid', 
    'purchaseorderid', 'VARCHAR', 'DN_PO_ID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'panelFields', '4', 'Delivery Date', 'deliverydate', 
    'deliverydate', 'DATE', 'DN_DOD', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'panelFields', '5', 'Received Date', 'receiveddate', 
    'receiveddate', 'DATE', 'DN_DOR', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'panelFields', '6', 'Warranty Date', 'warrantydate', 
    'warrantydate', 'DATE', 'DN_WARRANTY_DATE', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'panelFields', '7', 'Invoice No.', 'invoiceno', 
    'invoiceno', 'VARCHAR', 'DN_INVOICE_NO', NULL, NULL, 
    '3', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'panelFields', '8', 'Chq No.', 'chqno', 
    'chqno', 'VARCHAR', 'DN_CHQ_NO', NULL, NULL, 
    '4', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'panelFields', '9', 'Order No.', 'orderno', 
    'orderno', 'VARCHAR', 'DN_ORD_NO', NULL, NULL, 
    '4', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'statusFields', '1', 'Status', 'Status', 
    'Status', 'VARCHAR', 'STATUS', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'statusFields', '2', 'Wfl ActionID', 'wflactionid', 
    'wflactionid', 'NUMBER', 'WFLACTIONID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'statusFields', '3', 'Wfl Action Desc', 'wflactiondesc', 
    'wflactiondesc', 'VARCHAR', 'WFLACTIONDESC', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'statusFields', '4', 'Wfl ID', 'wflid', 
    'wflid', 'VARCHAR', 'WFLID', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'buttonPanel', '1', 'Search', 'btnsearch', 
    'btnsearch', NULL, NULL, 'onclick=''search();''', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'buttonPanel', '2', 'View Details', 'btnviewdetails', 
    'btnviewdetails', NULL, NULL, 'onclick=''return viewdetails();''', NULL, 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'panelFields', '1', 'DN ID', 'deliverynoteid', 
    'deliverynoteid', 'VARCHAR', 'DN_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'panelFields', '7', 'Delivery Date', 'deliverydate', 
    'deliverydate', 'DATE', 'DN_DOD', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'panelFields', '8', 'Received Date', 'receiveddate', 
    'receiveddate', 'DATE', 'DN_DOR', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'panelFields', '9', 'Warranty Date', 'warrantydate', 
    'warrantydate', 'DATE', 'DN_WARRANTY_DATE', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'panelFields', '4', 'Chq No.', 'chqno', 
    'chqno', 'VARCHAR', 'DN_CHQ_NO', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'panelFields', '5', 'Invoice No.', 'invoiceno', 
    'invoiceno', 'VARCHAR', 'DN_INVOICE_NO', NULL, NULL, 
    '3', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'panelFields', '6', 'Order No.', 'orderno', 
    'orderno', 'VARCHAR', 'DN_ORD_NO', NULL, NULL, 
    '3', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'searchPanel', '1', 'Delivery Note ID', 'sdeliverynoteid', 
    'sdeliverynoteid', 'VARCHAR', 'DN_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'searchPanel', '2', 'Purchase Order ID', 'spurchaseorderid', 
    'spurchaseorderid', 'VARCHAR', 'DN_PO_ID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'searchPanel', '3', 'Delivery Date', 'sdeliverydate', 
    'sdeliverydate', 'DATE', 'DN_DOD', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'searchPanel', '4', 'Received Date', 'sreceiveddate', 
    'sreceiveddate', 'DATE', 'DN_DOR', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'searchPanel', '5', 'Warranty Date', 'swarrantydate', 
    'swarrantydate', 'VARCHAR', 'DN_DOD', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'searchPanel', '6', 'Chq No.', 'schqno', 
    'schqno', 'VARCHAR', 'DN_CHQ_NO', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'searchPanel', '7', 'Invoice No.', 'sinvoiceno', 
    'sinvoiceno', 'VARCHAR', 'DN_INVOICE_NO', NULL, NULL, 
    '3', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'searchPanel', '8', 'Order No.', 'sorderno', 
    'sorderno', 'VARCHAR', 'DN_ORD_NO', NULL, NULL, 
    '3', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'panelFields', '3', 'Item Quantity', 'itemquantity', 
    'itemquantity', 'VARCHAR', 'DN_ITEM_QTY', NULL, NULL, 
    '3', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'panelFields', '2', 'Item ID', 'itemid', 
    'itemid', 'VARCHAR', 'DN_ITEM_ID', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'panelFields', '2', 'Item ID', 'itemid', 
    'itemid', 'VARCHAR', 'DN_ITEM_ID', NULL, NULL, 
    '4', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'panelFields', '3', 'Item Quantity', 'itemquantity', 
    'itemquantity', 'VARCHAR', 'DN_ITEM_QTY', NULL, NULL, 
    '4', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRRF', 'buttonPanel', '6', 'BackToList', 'btnBack', 
    'btnBack', NULL, NULL, ' onclick="backToList();"', NULL, 
    '5', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'buttonPanel', '1', 'Back', 'btnBack', 
    'btnBack', ' ', ' ', 'onclick=''javscript:location.href="/ams/template1.action?screenName=frmAssetList"''', ' ', 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'buttonPanel', '2', 'Save', 'btnSave', 
    'btnSave', ' ', ' ', ' onclick=''reqSave();''', ' ', 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'buttonPanel', '3', 'Modify', 'btnModify', 
    'btnModify', ' ', ' ', ' onclick="updateData(this);"
', ' ', 
    '2', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'buttonPanel', '4', 'Delete', 'btnDelete', 
    'btnDelete', ' ', ' ', 'onclick=''deleteData();''', ' ', 
    '3', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'buttonPanel', '6', 'Submit', 'btnsubmit', 
    'btnSubmit', ' ', ' ', ' onclick=''submitScreenFlowactivity()''', ' ', 
    '5', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'panelFields', '1', 'Asset ID', 'assetid', 
    'assetid', 'VARCHAR', 'ASSET_ID', ' ', ' ', 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'panelFields', '2', 'Asset Name', 'assetname', 
    'assetname', 'VARCHAR', 'ASSET_NAME', ' ', ' ', 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'panelFields', '3', 'Asset Type', 'assettyoe', 
    'assettype', 'VARCHAR', 'ASSET_ASSET_TYPE_ID', NULL, 'select ASSET_TYPE_ID val, ASSET_TYPE_NAME  des from AMS_ASSET_TYPE', 
    '1', '0', NULL, 'DROPDOWN', 'Y', 
    NULL, NULL, 'style=''width:145px;''');
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'panelFields', '4', 'Vendor ID', 'vendorid', 
    'vendorid', 'VARCHAR', 'ASSET_VENDOR_ID', NULL, 'select DEPT_ID VAL,DEPT_NAME DES from ams_DEPARTMENT', 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'panelFields', '5', 'Make', 'make', 
    'make', 'VARCHAR', 'ASSET_MAKE', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'panelFields', '6', 'Asset Tag', 'tag', 
    'tag', 'VARCHAR', 'ASSET_TAG', ' ', ' ', 
    '2', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'panelFields', '12', 'Remarks', 'remarks', 
    'remarks', 'VARCHAR', 'ASSET_REMARKS', NULL, NULL, 
    '5', '0', NULL, 'TEXTAREA', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'statusFields', '1', 'Status', 'Status', 
    'Status', 'VARCHAR', 'STATUS', ' ', ' ', 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'statusFields', '2', 'Wfl ActionID', 'wflactionid', 
    'wflactionid', 'NUMBER', 'WFLACTIONID', ' ', ' ', 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'statusFields', '3', 'Wfl Action Desc', 'wflactiondesc', 
    'wflactiondesc', 'VARCHAR', 'WFLACTIONDESC', ' ', ' ', 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'statusFields', '4', 'Wfl ID', 'wflid', 
    'wflid', 'VARCHAR', 'WFLID', ' ', ' ', 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'buttonPanel', '1', 'Search', 'search', 
    'search', NULL, NULL, 'onclick=''search();''', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'buttonPanel', '2', 'Create Asset', 'createasset', 
    'createasset', NULL, NULL, 'onclick=''clearWhereClause();fnCreateActivity("CRAST");''', NULL, 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'buttonPanel', '3', 'View Details', 'viewdetails', 
    'viewdetails', NULL, NULL, 'onclick=''return viewdetails(this);''', NULL, 
    '2', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'dnPanel', '2', 'Hello', 'none', 
    'none', 'VARCHAR', NULL, NULL, NULL, 
    '0', '1', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'panelFields', '1', 'Asset ID', 'assetid', 
    'assetid', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'panelFields', '2', 'Asset Name', 'assetname', 
    'assetname', 'VARCHAR', 'ASSET_NAME', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'panelFields', '11', 'Quantity', 'quantity', 
    'quantity', 'VARCHAR', 'ASSET_QUANTITY', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'panelFields', '3', 'Asset Type', 'assettype', 
    'assettype', 'VARCHAR', 'ASSET_ASSET_TYPE_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'panelFields', '4', 'Vendor ID', 'vendorid', 
    'vendorid', 'VARCHAR', 'ASSET_VENDOR_ID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'panelFields', '5', 'Asset Make', 'assetmake', 
    'assetmake', 'VARCHAR', 'ASSET_MAKE', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'panelFields', '6', 'Asset Tag', 'assettag', 
    'assettag', 'VARCHAR', 'ASSET_TAG', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'panelFields', '7', 'Asset Config', 'assetconf', 
    'assetconf', 'VARCHAR', 'ASSET_CONFG', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'panelFields', '8', 'Alloc Status', 'allocstatus', 
    'allocstatus', 'VARCHAR', 'ASSET_ALLOC_STATUS', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'panelFields', '9', 'Warranty', 'warranty', 
    'warranty', 'VARCHAR', 'ASSET_WARRANTY_STATUS', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'panelFields', '10', 'Remarks', 'remarks', 
    'remarks', 'VARCHAR', 'ASSET_REMARKS', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'searchPanel', '1', 'Asset ID', 'assetid', 
    'assetid', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'searchPanel', '2', 'Asset Name', 'assetname', 
    'assetname', 'VARCHAR', 'ASSET_NAME', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'searchPanel', '3', 'Asset Type', 'asettype', 
    'assettype', 'VARCHAR', 'ASSET_ASSET_TYPE_ID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'searchPanel', '4', 'Make', 'make', 
    'make', 'VARCHAR', 'ASSET_MAKE', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'searchPanel', '6', 'Asset Alloc Status', 'allocstatus', 
    'allocstatus', 'VARCHAR', 'ASSET_ALLOC_STATUS', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAssetList', 'searchPanel', '5', 'Asset version', 'assetversion', 
    'assetversion', 'VARCHAR', 'ASSET_VERSION', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'panelFields', '7', 'Configuration', 'config', 
    'config', 'VARCHAR', 'ASSET_CONFG', NULL, NULL, 
    '3', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'panelFields', '8', 'Allocation Status', 'allocstatus', 
    'allocstatus', 'VARCHAR', 'ASSET_ALLOC_STATUS', NULL, NULL, 
    '3', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'panelFields', '9', 'Warranty', 'warranty', 
    'warranty', 'VARCHAR', 'ASSET_WARRANTY_STATUS', NULL, NULL, 
    '4', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'panelFields', '10', 'Quantity', 'quantity', 
    'quantity', 'VARCHAR', 'ASSET_QUANTITY', NULL, NULL, 
    '4', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAsset', 'dnPanel', '1', 'Delivery Note ID', 'dnid', 
    'dnid', 'VARCHAR', 'DN_ID', 'onclick=''search();''', 'select dn_id val,''item:'' ||dn_item_id||'' DOD:''||dn_dod des from ams_dn e', 
    '0', '0', NULL, 'DROPDOWN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFieldsAsst', '1', 'Asset ID', 'assetid', 
    'assetid', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFields', '1', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFields', '2', 'Request Date', 'reqdate', 
    'reqdate', 'VARCHAR', 'REQDATE', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFieldsAsst', '2', 'Asset Name', 'assetname', 
    'assetname', 'VARCHAR', 'ASSET_NAME', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFields', '3', 'Request Type', 'reqtype', 
    'reqtype', 'VARCHAR', 'REQUESTTYPE', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFieldsAsst', '3', 'Asset Type', 'assettype', 
    'assettype', 'VARCHAR', 'ASSET_ASSET_TYPE_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFieldsAsst', '4', 'Asset Make', 'assetmake', 
    'assetmake', 'VARCHAR', 'ASSET_MAKE', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFieldsAsst', '5', 'Alloc Status', 'allocstatus', 
    'allocstatus', 'VARCHAR', 'ASSET_ALLOC_STATUS', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFields', '4', 'Employ ID', 'empid', 
    'empid', 'VARCHAR', 'EMPID', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFields', '5', 'Department', 'deptid', 
    'deptid', 'VARCHAR', 'DEPARTMENTNAME', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFields', '6', 'Status', 'stauts', 
    'status', 'VARCHAR', 'STATUS', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFieldsAsst', '6', 'Asset Quantity', 'quantity', 
    'quantity', 'VARCHAR', 'ASSET_QUANTITY', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAsst', '2', 'Asset ID', 'assetid', 
    'assetid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAsst', '3', 'Asset Name', 'assetname', 
    'assetname', 'VARCHAR', 'ASSET_NAME', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAsst', '4', 'Asset Type', 'assettype', 
    'assettype', 'VARCHAR', 'ASSET_ASSET_TYPE_ID', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAsst', '5', 'Make', 'assetmake', 
    'assetmake', 'VARCHAR', 'ASSET_MAKE', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanel', '2', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanel', '3', 'Request Type', 'reqtype', 
    'reqtype', 'VARCHAR', 'REQUESTTYPE', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanel', '5', 'Employ ID', 'empid', 
    'empid', 'VARCHAR', 'EMPID', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanel', '6', 'Status', 'stauts', 
    'status', 'VARCHAR', 'STATUS', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelBtn', '1', 'Search', 'btnReqsearch', 
    'btnReqsearch', 'VARCHAR', NULL, 'onclick=''search1()''', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAsst', '6', 'Status', 'stauts', 
    'status', 'VARCHAR', 'STATUS', NULL, NULL, 
    '3', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAsstBtn', '1', 'Search', 'btnAsstsearch', 
    'btnAsstsearch', 'VARCHAR', NULL, 'onclick=''search2()''', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocation', 'buttonPanel', '1', 'Back', 'btnBack', 
    'btnBack', ' ', ' ', 'onclick=''javscript:location.href="/ams/template1.action?screenName=frmAllocationList"''', ' ', 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocation', 'buttonPanel', '2', 'Save', 'btnSave', 
    'btnSave', ' ', ' ', ' onclick=''reqSave();''', ' ', 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocation', 'buttonPanel', '3', 'Modify', 'btnModify', 
    'btnModify', ' ', ' ', 'onclick="updateData(this);"', ' ', 
    '2', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocation', 'buttonPanel', '4', 'Delete', 'btnDelete', 
    'btnDelete', ' ', ' ', 'onclick=''deleteData();''', ' ', 
    '3', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocation', 'buttonPanel', '6', 'Submit', 'btnsubmit', 
    'btnSubmit', ' ', ' ', ' onclick=''submitScreenFlowactivity()''', ' ', 
    '5', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAlloc', '2', 'Asset ID', 'assetid', 
    'assetid', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAlloc', '3', 'Asset Serial No.', 'assetno', 
    'assetno', 'VARCHAR', 'ASSET_SNO', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAlloc', '4', 'Host Name', 'assethost', 
    'assethost', 'VARCHAR', 'ASSET_HOSTNAME', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAlloc', '5', 'User Name', 'username', 
    'username', 'VARCHAR', 'ASSET_USERNAME', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAlloc', '6', 'Allocated To IP', 'assetip', 
    'assetip', 'VARCHAR', 'ASSET_IP_ADDRESS', NULL, NULL, 
    '3', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAllocBtn', '1', 'Search', 'btnAllocsearch', 
    'btnAllocsearch', 'VARCHAR', NULL, 'onclick=''search3()''', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFieldsAlloc', '1', 'Asset ID', 'assetid', 
    'assetid', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFieldsAlloc', '2', 'Asset Serial No.', 'assetno', 
    'assetno', 'VARCHAR', 'ASSET_SNO', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFieldsAlloc', '3', 'Host Name', 'assethost', 
    'assethost', 'VARCHAR', 'ASSET_HOSTNAME', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFieldsAlloc', '4', 'User Name', 'assetusername', 
    'assetusername', 'VARCHAR', 'ASSET_USERNAME', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFieldsAlloc', '5', 'Allocated to IP', 'assetip', 
    'assetip', 'VARCHAR', 'ASSET_IP_ADDRESS', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocation', 'panelFields', '2', 'Asset ID', 'assetid', 
    'assetid', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocation', 'panelFields', '3', 'Asset Serial No.', 'assetno', 
    'assetno', 'VARCHAR', 'ASSET_SNO', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocation', 'panelFields', '4', 'Host Name', 'assethost', 
    'assethost', 'VARCHAR', 'ASSET_HOSTNAME', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocation', 'panelFields', '5', 'User Name', 'username', 
    'username', 'VARCHAR', 'ASSET_USERNAME', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocation', 'panelFields', '6', 'Allocated To IP', 'assetip', 
    'assetip', 'VARCHAR', 'ASSET_IP_ADDRESS', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAllocBtn', '2', 'View Details', 'btnAlloccView', 
    'btnAllocView', 'VARCHAR', NULL, 'onclick=''viewdetails()''', NULL, 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanel', '1', 'Request Search', 'reqsearch', 
    'reqsearch', NULL, NULL, NULL, NULL, 
    '0', '0', NULL, 'LABEL', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAlloc', '1', 'Allocation Search', 'assetsearch', 
    'assetsearch', NULL, NULL, NULL, NULL, 
    '0', '0', NULL, 'LABEL', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAsst', '1', 'Asset Search', 'assetsearch', 
    'assetsearch', 'VARCHAR', NULL, NULL, NULL, 
    '0', '0', NULL, 'LABEL', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAllocBtn', '3', 'Create', 'btnAlloccCreate', 
    'btnAlloccCreate', 'VARCHAR', NULL, 'onclick=''clearWhereClause();fnCreateActivity("CRALLOC");''', NULL, 
    '2', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'NewHardware', '6', 'Description', 'descriptionnh', 
    'descriptionnh', 'VARCHAR', 'DESCRIPTION', NULL, NULL, 
    '3', '0', NULL, 'TEXTAREA', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRF', 'buttonPanel', '1', 'Forward to Next Level', 'btnforwardtonextlevel', 
    'btnforwardtonextlevel', NULL, NULL, 'onclick=''updateStatus("btnforwardtonextlevel");''', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRF', 'buttonPanel', '2', 'Approve', 'btnapprove', 
    'btnapprove', NULL, NULL, 'onclick=''approvalRrf();''', NULL, 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRF', 'buttonPanel', '3', 'Reject', 'btnreject', 
    'btnreject', NULL, NULL, 'onclick=''rejectRrf();''', NULL, 
    '2', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRF', 'panelFields', '1', 'RRF ID', 'rrfid', 
    'rrfid', 'VARCHAR', 'RRF_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRF', 'panelFields', '2', 'Quotation ID', 'rrfquotationid', 
    'rrfquotationid', 'VARCHAR', 'RRF_QT_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRF', 'panelFields', '3', 'Request ID', 'rrfrequestid', 
    'rrfrequestid', 'VARCHAR', 'RRF_REQ_ID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRF', 'panelFields', '4', 'RRF Date', 'rrfdate', 
    'rrfdate', 'DATE', 'RRF_DATE', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRF', 'panelFields', '5', 'RRF Status', 'rrfstatus', 
    'rrfstatus', 'VARCHAR', 'RRF_STATUS', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRF', 'statusFields', '1', 'Status', 'Status', 
    'Status', 'VARCHAR', 'STATUS', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRF', 'statusFields', '2', 'Wfl ActionID', 'wflactionid', 
    'wflactionid', 'NUMBER', 'WFLACTIONID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRF', 'statusFields', '3', 'Wfl Action Desc', 'wflactiondesc', 
    'wflactiondesc', 'VARCHAR', 'WFLACTIONDESC', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRF', 'statusFields', '4', 'Wfl ID', 'wflid', 
    'wflid', 'VARCHAR', 'WFLID', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRFList', 'buttonPanel', '1', 'Search', 'btnsearch', 
    'btnsearch', NULL, NULL, 'onclick=''search();''', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRFList', 'buttonPanel', '2', 'View Details', 'btnviewdetails', 
    'btnviewdetails', NULL, NULL, 'onclick="viewdetails();"', NULL, 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRFList', 'panelFields', '1', 'RRF ID', 'rrfid', 
    'rrfid', 'VARCHAR', 'RRF_ID', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRFList', 'panelFields', '2', 'Quotation ID', 'rrfquotationid', 
    'rrfquotationid', 'VARCHAR', 'RRF_QT_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRFList', 'panelFields', '3', 'Request ID', 'rrfrequestid', 
    'rrfrequestid', 'VARCHAR', 'RRF_REQ_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRFList', 'panelFields', '4', 'RRF Date', 'rrfdate', 
    'rrfdate', 'DATE', 'RRF_DATE', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRFList', 'panelFields', '5', 'RRF Status', 'rrfstatus', 
    'rrfstatus', 'VARCHAR', 'RRF_STATUS', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRFList', 'searchPanel', '1', 'RRF ID', 'srrfid', 
    'srrfid', 'VARCHAR', 'RRF_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRFList', 'searchPanel', '2', 'Quotation ID', 'srrfquotationid', 
    'srrfquotationid', 'VARCHAR', 'RRF_QT_ID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRFList', 'searchPanel', '3', 'Request ID', 'srrfrequestid', 
    'srrfrequestid', 'VARCHAR', 'RRF_REQ_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRFList', 'searchPanel', '4', 'RRF Date', 'srrfdate', 
    'srrfdate', 'DATE', 'RRF_DATE', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRFList', 'searchPanel', '5', 'RRF Status', 'srrfstatus', 
    'srrfstatus', 'VARCHAR', 'RRF_STATUS', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRF', 'panelFields', '6', 'Comments', 'rrfcomments', 
    'rrfcomments', 'VARCHAR', 'RRF_COMMENTS', NULL, NULL, 
    '2', '1', NULL, 'TEXTAREA', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRFList', 'searchPanel', '6', 'RRF Approvar', 'srrfaprv', 
    'srrfaprv', 'VARCHAR', 'RRF_APRV_ID', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);

Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRF', 'buttonPanel', '4', 'BackToList', 'btnBack', 
    'btnBack', NULL, NULL, ' onclick="backToList();"', NULL, 
    '4', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);

Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApprovalRRF', 'rfqFields', '1', 'RFQ ID', 'rrfrfq', 
    'rrfrfq', 'VARCHAR', 'QT_RFQ_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'statusFields', '1', 'Status', 'Status', 'Status', 'VARCHAR', 'STATUS', NULL
, NULL, '0', '0', NULL, 'TEXTBOX', NULL, 'Y', NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'panelFields', '1', 'PO ID', 'poid', 'poid', 'VARCHAR', 'PO_ID', NULL, NULL
, '0', '0', NULL, 'TEXTBOX', NULL, 'Y', NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'panelFields', '2', 'RRF ID', 'porrfid', 'porrfid', 'VARCHAR', 'PO_RRF_ID'
, NULL, NULL, '0', '1', NULL, 'TEXTBOX', NULL, NULL, NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'panelFields', '3', 'PO Date', 'podate', 'podate', 'DATE', 'PO_DATE', NULL
, NULL, '1', '0', NULL, 'TEXTBOX', NULL, NULL, NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'panelFields', '4', 'Status', 'postatus', 'postatus', 'VARCHAR', 'PO_STATUS'
, NULL, NULL, '1', '1', NULL, 'TEXTBOX', NULL, NULL, NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'statusFields', '2', 'Wfl ActionID', 'wflactionid', 'wflactionid', 'NUMBER'
, 'WFLACTIONID', NULL, NULL, '0', '1', NULL, 'TEXTBOX', NULL, 'Y', NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'panelFields', '5', 'Comments', 'pocomments', 'pocomments', 'VARCHAR', 'PO_COMMENTS'
, NULL, NULL, '2', '0', NULL, 'TEXTAREA', NULL, NULL, NULL, NULL); 

INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'buttonPanel', '1', 'Send PO', 'send', 'send', NULL, NULL, NULL, NULL, '0'
, '0', NULL, 'BUTTON', NULL, NULL, NULL, NULL); 

INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'statusFields', '3', 'Wfl Action Desc', 'wflactiondesc', 'wflactiondesc'
, 'VARCHAR', 'WFLACTIONDESC', NULL, NULL, '1', '0', NULL, 'TEXTBOX', NULL, 'Y', NULL
, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'statusFields', '4', 'Wfl ID', 'wflid', 'wflid', 'VARCHAR', 'WFLID', NULL
, NULL, '1', '1', NULL, 'TEXTBOX', NULL, 'Y', NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'buttonPanel', '3', 'Cancel PO', 'cancelpo', 'cancelpo', NULL, NULL, NULL
, NULL, '2', '0', NULL, 'BUTTON', NULL, NULL, NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'buttonPanel', '2', 'View PO', 'viewpo', 'viewpo', NULL, NULL, NULL, NULL
, '1', '0', NULL, 'BUTTON', NULL, NULL, NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'ItemDetails', '6', 'Item ID', 'itemid', 'itemid', 'VARCHAR', NULL, NULL
, NULL, '2', '1', NULL, 'TEXTBOX', NULL, NULL, NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'ItemDetails', '2', 'Item Quantity', 'itemquantity', 'itemquantity', 'VARCHAR'
, NULL, NULL, NULL, '0', '1', NULL, 'TEXTBOX', NULL, NULL, NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'ItemDetails', '3', 'Unit Price', 'unitprice', 'unitprice', 'VARCHAR', NULL
, NULL, NULL, '1', '0', NULL, 'TEXTBOX', NULL, NULL, NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'ItemDetails', '4', 'Discount', 'discount', 'discount', 'VARCHAR', NULL, NULL
, NULL, '1', '1', NULL, 'TEXTBOX', NULL, NULL, NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'ItemDetails', '5', 'Total Price', 'totalprice', 'totalprice', 'VARCHAR'
, NULL, NULL, NULL, '2', '0', NULL, 'TEXTBOX', NULL, NULL, NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'ItemDetails', '1', 'Quotation ID', 'qid', 'qid', 'VARCHAR', NULL, NULL, NULL
, '0', '0', NULL, 'TEXTBOX', NULL, NULL, NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'buttonPanel', '4', 'Modify', 'modify', 'modify', NULL, NULL, 'onclick=''enable_fields();'''
, NULL, '3', '0', NULL, 'BUTTON', NULL, NULL, NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmPO', 'buttonPanel', '5', 'Save', 'save', 'save', NULL, NULL, 'onclick=''posave();'''
, NULL, '4', '0', NULL, 'BUTTON', NULL, NULL, NULL, 'disabled=''disabled'''); 

Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmPOList', 'buttonPanel', '2', 'View Details', 'viewdetails', 
    'viewdetails', NULL, NULL, 'onclick=''return viewdetails();''', NULL, 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmPOList', 'buttonPanel', '1', 'Search', 'search', 
    'search', NULL, NULL, 'onclick=''search();''', NULL, 
    '0', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmPOList', 'searchPanel', '1', 'PO ID', 'spoid', 
    'spoid', 'VARCHAR', 'PO_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmPOList', 'searchPanel', '2', 'PO RRF ID', 'sporrfid', 
    'sporrfid', 'VARCHAR', 'PO_RRF_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmPOList', 'searchPanel', '3', 'PO Date', 'spodate', 
    'spodate', 'DATE', 'PO_DATE', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmPOList', 'searchPanel', '4', 'PO Status', 'spostatus', 
    'spostatus', 'VARCHAR', 'PO_STATUS', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmPOList', 'panelFields', '1', 'PO ID', 'poid', 
    'poid', 'VARCHAR', 'PO_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmPOList', 'panelFields', '2', 'PO RRF ID', 'porrfid', 
    'porrfid', 'VARCHAR', 'PO_RRF_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmPOList', 'panelFields', '3', 'PO Date', 'podate', 
    'podate', 'DATE', 'PO_DATE', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmPOList', 'panelFields', '4', 'PO Status', 'postatus', 
    'postatus', 'VARCHAR', 'PO_STATUS', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);

Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'panelFields', '8', 'Department', 'departmentname', 
    'departmentname', 'VARCHAR', 'departmentname', NULL, NULL, 
    '3', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'panelFields', '6', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'reqid', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, 'style="visibility:hidden"');
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'panelFields', '1', 'Employee Id', 'EmpId', 
    'empid', 'VARCHAR', 'empid', ' ', NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, 'disabled="disabled"');
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'panelFields', '2', 'Employee Name', 'EmpName', 
    'empname', 'VARCHAR', 'empname', ' ', NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, 'disabled="disabled"');
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'panelFields', '7', 'Request Type', 'requesttype', 
    'requesttype', 'VARCHAR', 'requesttype', ' onChange=''javascript:generatecall(this);''', 'SELECT REQUESTTYPE AS VAL,REQUESTTYPE AS DES  from AMS_REQUEST_TYPE', 
    '3', '0', NULL, 'DROPDOWN', 'Y', 
    NULL, NULL, NULL);

    INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmRequest', 'buttonPanel', '1', 'Save', 'btnSave', 'btnSave', ' ', ' ', ' onclick=''reqSave();'''
, NULL, '0', '0', NULL, 'BUTTON', NULL, NULL, NULL, NULL); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmRequest', 'buttonPanel', '2', 'Submit', 'btnsubmit', 'btnsubmit', NULL, NULL, 'onclick=''submitScreenFlowactivity()'''
, NULL, '2', '0', NULL, 'BUTTON', NULL, NULL, NULL, 'disabled="disabled"'); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmRequest', 'buttonPanel', '3', 'Delete', 'btndelete', 'btndelete', NULL, NULL, 'onclick=''deleteData();'''
, NULL, '3', '0', NULL, 'BUTTON', NULL, NULL, NULL, 'disabled="disabled"'); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmRequest', 'buttonPanel', '4', 'Modify', 'btnmodify', 'btnmodify', NULL, NULL, 'onclick=''enable_fields();'''
, NULL, '1', '0', NULL, 'BUTTON', NULL, NULL, NULL, 'disabled="disabled"'); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmRequest', 'buttonPanel', '5', 'Cancel', 'btncancel', 'btncancel', NULL, NULL, 'onclick=''cancelReq();'''
, NULL, '4', '0', NULL, 'BUTTON', NULL, NULL, NULL, 'disabled="disabled"'); 
INSERT INTO PANEL_FIELDS ( SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, IDNAME, DATATYPE, DBCOL,
VALIDATION, STRQUERY, NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, PRKEY, AUTOGEN,
ELEM_ATTRIB ) VALUES ( 
'frmRequest', 'buttonPanel', '6', 'Close', 'btnclose', 'btnclose', NULL, NULL, 'onclick=''closeReq();'''
, NULL, '5', '0', NULL, 'BUTTON', NULL, NULL, NULL, 'disabled="disabled"'); 

Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'panelFields', '3', 'Manager Id', 'mgrid', 
    'mgrid', 'VARCHAR', 'mgrid', 'onChange=''javascript:generatename(this);''', NULL, 
    '1', '0', NULL, 'DROPDOWN', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'panelFields', '4', 'Manager Name', 'mgrname', 
    'mgrname', 'VARCHAR', 'mgrname', ' ', NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, 'disabled="disabled"');
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'panelFields', '5', 'Request Date', 'reqdate', 
    'reqdate', 'DATE', 'reqdate', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, 'disabled="disabled"');
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'NewHardware', '1', 'Processor', 'processornh', 
    'processornh', 'VARCHAR', 'PROCESSOR', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'NewHardware', '2', 'RAM', 'ram', 
    'ramnh', 'VARCHAR', 'RAM', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'NewHardware', '3', 'Hard Disk', 'hdd', 
    'hdd', 'VARCHAR', 'HARDDISK', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'panelFields', '9', 'Remarks', 'remarks', 
    'remarks', 'VARCHAR', 'REMARKS', NULL, NULL, 
    '4', '0', NULL, 'TEXTAREA', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'NewHardware', '4', 'Make', 'make', 
    'make', 'VARCHAR', 'MAKE', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'NewHardware', '5', 'Quantity', 'quantity', 
    'quantity', 'INTEGER', 'QUANTITY', NULL, NULL, 
    '2', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'NewHardware', '7', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '2', '1', NULL, 'HIDDEN', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'HardwareUpgrade', '1', 'Asset ID', 'assetidhu', 
    'assetidhu', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'HardwareUpgrade', '6', 'Processor', 'processorhu', 
    'processorhu', 'VARCHAR', 'PROCESSOR', NULL, NULL, 
    '2', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'HardwareUpgrade', '3', 'RAM', 'ram', 
    'ramhu', 'VARCHAR', 'RAM', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'HardwareUpgrade', '4', 'Hard Disk', 'harddisk', 
    'harddisk', 'VARCHAR', 'HARDDISK', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'HardwareUpgrade', '5', 'Description', 'descriptionhu', 
    'descriptionhu', 'VARCHAR', 'DESCRIPTION', NULL, NULL, 
    '2', '0', NULL, 'TEXTAREA', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'Software', '1', 'Reference Request ID', 'refreqid', 
    'refreqid', 'VARCHAR', 'REF_REQID', NULL, NULL, 
    '0', '0', NULL, 'DROPDOWN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'Software', '2', 'Asset ID', 'assetidsw', 
    'assetidsw', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'Software', '3', 'Software', 'software', 
    'software', 'VARCHAR', 'SOFTWARE', NULL, 'select ASSET_NAME AS VAL, ASSET_NAME AS DES from AMS_ASSET_AVAILABILITY where ASSET_TYPE_ID = ''SW''', 
    '1', '0', NULL, 'DROPDOWN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'Software', '4', 'Request Id', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '1', NULL, 'HIDDEN', NULL, 
    'Y', 'Y', NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'HardwareUpgrade', '7', 'Request Id', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '3', '0', NULL, 'HIDDEN', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'HardwareTypes', '1', 'Hardware Type', 'hardwaretype', 
    'hardwaretype', 'VARCHAR', 'ASSET_TYPE_NAME', 'onChange=''javascript:generatesubcallforhardware(this);''', 'SELECT ASSET_TYPE_ID AS VAL,ASSET_TYPE_NAME AS DES from AMS_ASSET_TYPE where ASSET_TYPE_REF = ''HW''', 
    '0', '0', NULL, 'DROPDOWN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'GeneralHardware', '1', 'Quantity', 'quantity', 
    'quantity', 'VARCHAR', 'QUANTITY', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'GeneralHardware', '2', 'Description', 'descriptiongh', 
    'descriptiongh', 'VARCHAR', 'DESCRIPTION', NULL, NULL, 
    '1', '0', NULL, 'TEXTAREA', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'GeneralHardware', '3', 'Hardware type', 'hardwaretypegeneral', 
    'hardwaretypegeneral', 'VARCHAR', 'ASSET_TYPE_ID', NULL, NULL, 
    '0', '1', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'GeneralHardware', '4', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '1', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'AmcRenewal', '1', 'Asset ID', 'assetidamc', 
    'assetidamc', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'AmcRenewal', '2', 'Delivery Note Number', 'deliverynote', 
    'deliverynote', 'VARCHAR', 'DELIVERY_NOTE', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'AmcRenewal', '3', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '0', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'Software', '5', 'Description', 'descriptionsw', 
    'descriptionsw', 'VARCHAR', 'DESCRIPTION', NULL, NULL, 
    '2', '0', NULL, 'TEXTAREA', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'AmcRenewal', '4', 'Description', 'descriptionmc', 
    'descriptionamc', 'VARCHAR', 'DESCRIPTION', NULL, NULL, 
    '1', '1', NULL, 'TEXTAREA', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'PcTransferType', '1', 'Transfer Type', 'transfertypesel', 
    'transfertypesel', 'VARCHAR', NULL, 'onChange=''javascript:generatesubcallfortransfer(this);''', NULL, 
    '0', '0', NULL, 'DROPDOWN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'PcOneTransfer', '1', 'User ID', 'user1', 
    'user1', 'VARCHAR', 'USER1', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'PcOneTransfer', '2', 'Asset ID', 'assetidpco', 
    'assetidpco', 'VARCHAR', 'PCTRANSFER_USER1', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'PcOneTransfer', '3', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '0', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'PcSwapTransfer', '1', 'User ID 1', 'userid1', 
    'userid1', 'VARCHAR', 'USER1', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'PcSwapTransfer', '2', 'Asset ID 1', 'assetid1', 
    'assetid1', 'VARCHAR', 'PCTRANSFER_USER1', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'PcSwapTransfer', '4', 'Asset ID 2', 'assetid2', 
    'assetid2', 'VARCHAR', 'PCTRANSFER_USER2', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'PcSwapTransfer', '3', 'User ID 2', 'userid2', 
    'userid2', 'VARCHAR', 'USER2', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'PcSwapTransfer', '5', 'Transfer Type', 'transfertypeswap', 
    'transfertypeswap', 'VARCHAR', 'TRANSFER_TYPE', NULL, NULL, 
    '2', '0', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'PcOneTransfer', '4', 'Transfer Type', 'transfertypeone', 
    'transfertypeone', 'VARCHAR', 'TRANSFER_TYPE', NULL, NULL, 
    '1', '1', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'PcSwapTransfer', '6', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '2', '1', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'ReleaseResource', '1', 'Asset ID', 'assetidrr', 
    'assetidrr', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'ReleaseResource', '2', 'Description', 'descriptionrr', 
    'descriptionrr', 'VARCHAR', 'DESCRIPTION', NULL, NULL, 
    '0', '1', NULL, 'TEXTAREA', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'ReleaseResource', '3', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '0', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'SoftwareTransfer', '1', 'Asset Name', 'assetname', 
    'assetname', 'VARCHAR', 'ASSET_NAME', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'SoftwareTransfer', '2', 'User ID', 'userid', 
    'userid', 'VARCHAR', 'USER_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'SoftwareTransfer', '3', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '1', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'SoftwareTransfer', '4', 'Asset ID', 'assetidst', 
    'assetidst', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'statusFields', '2', 'Wfl ActionID', 'wflactionid', 
    'wflactionid', 'NUMBER', 'WFLACTIONID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'statusFields', '1', 'Status', 'Status', 
    'Status', 'VARCHAR', 'STATUS', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'statusFields', '3', 'Wfl Action Desc', 'wflactiondesc', 
    'wflactiondesc', 'VARCHAR', 'WFLACTIONDESC', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'statusFields', '4', 'Wfl ID', 'wflid', 
    'wflid', 'VARCHAR', 'WFLID', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);



Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'NewHardware', '8', 'Hardware Type', 'newhardwaretype', 
    'newhardwaretype', 'VARCHAR', 'ASSET_TYPE_ID', NULL, NULL, 
    '3', '0', NULL, 'HIDDEN', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'HardwareUpgrade', '2', 'Asset Type', 'assettype', 
    'assettype', 'VARCHAR', 'ASSET_TYPE_ID', NULL, NULL, 
    '0', '1', NULL, 'DROPDOWN', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRequest', 'panelFields', '10', 'Status', 'status', 
    'status', 'VARCHAR', 'status', NULL, NULL, 
    '4', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, 'style="visibility:hidden"');

Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'searchPanelAsstBtn', '2', 'Create Allocation', 'btnAssetAlloc', 
    'btnAssetAlloc', NULL, NULL, 'onclick=''createAllocfromSel()''', NULL, 
    '1', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocation', 'panelFields', '1', 'Allocation ID', 'allocid', 
    'allocid', 'VARCHAR', 'ALLOC_ID', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', 'Y', 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocationList', 'panelFields', '7', 'Remarks', 'remarks', 
    'remarks', 'VARCHAR', 'REMARKS', NULL, NULL, 
    '3', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocation', 'statusFields', '1', 'Status', 'Status', 
    'Status', 'VARCHAR', 'STATUS', ' ', ' ', 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocation', 'statusFields', '2', 'Wfl ActionID', 'wflactionid', 
    'wflactionid', 'NUMBER', 'WFLACTIONID', ' ', ' ', 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocation', 'statusFields', '3', 'Wfl Action Desc', 'wflactiondesc', 
    'wflactiondesc', 'VARCHAR', 'WFLACTIONDESC', ' ', ' ', 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmAllocation', 'statusFields', '4', 'Wfl ID', 'wflid', 
    'wflid', 'VARCHAR', 'WFLID', ' ', ' ', 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'NewHardware', '6', 'Description', 'descriptionnh', 
    'descriptionnh', 'VARCHAR', 'DESCRIPTION', NULL, NULL, 
    '3', '0', NULL, 'TEXTAREA', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'NewHardware', '2', 'RAM', 'ram', 
    'ramnh', 'VARCHAR', 'RAM', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'NewHardware', '3', 'Hard Disk', 'hdd', 
    'hdd', 'VARCHAR', 'HARDDISK', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'SoftwareTransfer', '1', 'Asset Name', 'assetname', 
    'assetname', 'VARCHAR', 'ASSET_NAME', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'SoftwareTransfer', '2', 'User ID', 'userid', 
    'userid', 'VARCHAR', 'USER_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'SoftwareTransfer', '3', 'Request ID', 'reqid', 
    'reqid', 'VARCHAR', 'REQID', NULL, NULL, 
    '1', '1', NULL, 'HIDDEN', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'SoftwareTransfer', '4', 'Asset ID', 'assetidst', 
    'assetidst', 'VARCHAR', 'ASSET_ID', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'statusFields', '2', 'Wfl ActionID', 'wflactionid', 
    'wflactionid', 'NUMBER', 'WFLACTIONID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'statusFields', '1', 'Status', 'Status', 
    'Status', 'VARCHAR', 'STATUS', NULL, NULL, 
    '0', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'statusFields', '3', 'Wfl Action Desc', 'wflactiondesc', 
    'wflactiondesc', 'VARCHAR', 'WFLACTIONDESC', NULL, NULL, 
    '1', '0', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'statusFields', '4', 'Wfl ID', 'wflid', 
    'wflid', 'VARCHAR', 'WFLID', NULL, NULL, 
    '1', '1', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'buttonPanel', '2', 'Reject', 'btnReject', 
    'btnReject', NULL, NULL, 'onclick=''reqReject();''', NULL, 
    '2', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'buttonPanel', '3', 'Back To List', 'btnBack', 
    'btnBack', NULL, NULL, 'onclick=''backToList();''', NULL, 
    '3', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'NewHardware', '8', 'Hardware Type', 'newhardwaretype', 
    'newhardwaretype', 'VARCHAR', 'ASSET_TYPE_ID', NULL, NULL, 
    '3', '0', NULL, 'HIDDEN', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'HardwareUpgrade', '2', 'Asset Type', 'assettype', 
    'assettype', 'VARCHAR', 'ASSET_TYPE_ID', NULL, NULL, 
    '0', '1', NULL, 'DROPDOWN', 'Y', 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmApproval', 'panelFields', '10', 'Status', 'status', 
    'status', 'VARCHAR', 'status', NULL, NULL, 
    '4', '1', NULL, 'TEXTBOX', 'Y', 
    NULL, NULL, 'style="visibility:hidden"');
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmPOList', 'buttonPanel', '3', 'Create DN', 'createdn', 
    'createdn', NULL, NULL, 'onclick=''createAllocfromSel();''', NULL, 
    '2', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNote', 'popanel', '2', 'PO Status', 'postatus', 
    'postatus', 'VARCHAR', 'PO_STATUS', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmDeliveryNoteList', 'panelFields', '10', 'PO ID', 'purchaseorderid', 
    'purchaseorderid', 'VARCHAR', 'DN_PO_ID', NULL, NULL, 
    '0', '1', NULL, 'TEXTBOX', NULL, 
    'Y', NULL, NULL);
Insert into PANEL_FIELDS
   (SCR_NAME, PANEL_NAME, ORDERNO, LBLNAME, FNAME, 
    IDNAME, DATATYPE, DBCOL, VALIDATION, STRQUERY, 
    NROW, NCOL, CLASSNAME, HTMLELM, STORE_FLG, 
    PRKEY, AUTOGEN, ELEM_ATTRIB)
 Values
   ('frmRFQ', 'buttonPanel', '5', 'Cancel', 'btnCancel', 
    'btnCancel', ' ', ' ', ' onclick=''rfqCancel()''', ' ', 
    '4', '0', NULL, 'BUTTON', NULL, 
    NULL, NULL, NULL);
COMMIT;
