SET DEFINE OFF;
Insert into AMS_REQUEST
   (REQID, REQDATE, EMPID, MGRID, DEPARTMENTNAME, 
    REQUESTTYPE, EMPNAME, MGRNAME, STATUS, REMARKS)
 Values
   ('591', TO_DATE('03/02/2010 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'dav', 'jh123', 'ISS', 
    'New Software', 'David', 'john', 'Applied', 'New Oracle client 10g');
COMMIT;
