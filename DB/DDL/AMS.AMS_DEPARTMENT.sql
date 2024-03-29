ALTER TABLE AMS_DEPARTMENT
 DROP PRIMARY KEY CASCADE;
DROP TABLE AMS_DEPARTMENT CASCADE CONSTRAINTS;

CREATE TABLE AMS_DEPARTMENT
(
  DEPT_ID         VARCHAR2(20 BYTE),
  DEPT_NAME       VARCHAR2(200 BYTE),
  DEPT_HEAD_ID    VARCHAR2(200 BYTE),
  DEPT_VENDOR_ID  VARCHAR2(200 BYTE),
  DEPT_STATUS     CHAR(1 BYTE)                  NOT NULL
);


CREATE UNIQUE INDEX AMS_DEPARTMENT_DEPT_ID ON AMS_DEPARTMENT
(DEPT_ID);


ALTER TABLE AMS_DEPARTMENT ADD (
  PRIMARY KEY
 (DEPT_NAME),
  CONSTRAINT AMS_DEPARTMENT_DEPT_ID
 UNIQUE (DEPT_ID));

