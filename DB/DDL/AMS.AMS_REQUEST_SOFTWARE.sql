ALTER TABLE AMS_REQUEST_SOFTWARE
 DROP PRIMARY KEY CASCADE;
DROP TABLE AMS_REQUEST_SOFTWARE CASCADE CONSTRAINTS;

CREATE TABLE AMS_REQUEST_SOFTWARE
(
  REQID        VARCHAR2(100 BYTE)               NOT NULL,
  REF_REQID    VARCHAR2(100 BYTE),
  ASSET_ID     VARCHAR2(300 BYTE),
  SOFTWARE     VARCHAR2(300 BYTE),
  DESCRIPTION  VARCHAR2(500 BYTE)
);


ALTER TABLE AMS_REQUEST_SOFTWARE ADD (
  PRIMARY KEY
 (REQID));

ALTER TABLE AMS_REQUEST_SOFTWARE ADD (
  CONSTRAINT AMS_REQUEST_SOFTWARE_R03 
 FOREIGN KEY (REQID) 
 REFERENCES AMS_REQUEST (REQID)
    ON DELETE CASCADE,
  CONSTRAINT AMS_REQUEST_SOFTWARE_R04 
 FOREIGN KEY (REF_REQID) 
 REFERENCES AMS_REQUEST (REQID)
    ON DELETE CASCADE);

