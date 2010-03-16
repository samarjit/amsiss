ALTER TABLE AMS_REQUEST_HARDWARE
 DROP PRIMARY KEY CASCADE;
DROP TABLE AMS_REQUEST_HARDWARE CASCADE CONSTRAINTS;

CREATE TABLE AMS_REQUEST_HARDWARE
(
  REQID          VARCHAR2(100 BYTE)             NOT NULL,
  QUANTITY       NUMBER,
  RAM            NUMBER,
  MAKE           VARCHAR2(1 BYTE),
  HARDDISK       NUMBER,
  PROCESSOR      VARCHAR2(400 BYTE),
  DESCRIPTION    VARCHAR2(500 BYTE),
  ASSET_ID       VARCHAR2(300 BYTE),
  ASSET_TYPE_ID  VARCHAR2(100 BYTE)
);


CREATE UNIQUE INDEX AMS_REQUEST_HARDWARE_PK ON AMS_REQUEST_HARDWARE
(REQID);


ALTER TABLE AMS_REQUEST_HARDWARE ADD (
  CONSTRAINT AMS_REQUEST_HARDWARE_PK
 PRIMARY KEY
 (REQID));

ALTER TABLE AMS_REQUEST_HARDWARE ADD (
  CONSTRAINT AMS_REQUEST_HARDWARE_R03 
 FOREIGN KEY (REQID) 
 REFERENCES AMS_REQUEST (REQID)
    ON DELETE CASCADE);
