ALTER TABLE AMS_REQUEST
 DROP PRIMARY KEY CASCADE;
DROP TABLE AMS_REQUEST CASCADE CONSTRAINTS;

CREATE TABLE AMS_REQUEST
(
  REQID           VARCHAR2(25 BYTE)             NOT NULL,
  REQDATE         DATE,
  EMPID           VARCHAR2(25 BYTE),
  MGRID           VARCHAR2(25 BYTE),
  DEPARTMENTNAME  VARCHAR2(200 BYTE),
  REQUESTTYPE     VARCHAR2(200 BYTE),
  EMPNAME         VARCHAR2(200 BYTE),
  MGRNAME         VARCHAR2(200 BYTE),
  STATUS          VARCHAR2(200 BYTE)            DEFAULT NULL,
  REMARKS         VARCHAR2(500 BYTE)
);


CREATE UNIQUE INDEX AMS_REQUESTS_PK ON AMS_REQUEST
(REQID);


ALTER TABLE AMS_REQUEST ADD (
  CHECK ("REQDATE" IS NOT NULL) DISABLE,
  CHECK ("EMPID" IS NOT NULL) DISABLE,
  CHECK ("DEPARTMENTNAME" IS NOT NULL) DISABLE,
  CHECK ("REQUESTTYPE" IS NOT NULL) DISABLE,
  CONSTRAINT AMS_REQUESTS_PK
 PRIMARY KEY
 (REQID));

ALTER TABLE AMS_REQUEST ADD (
  CONSTRAINT AMS_REQUESTS_R01 
 FOREIGN KEY (EMPID) 
 REFERENCES AMS_EMPLOYEE (EMPID) DISABLE);

