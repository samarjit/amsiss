ALTER TABLE AMS_ASSET_TYPE
 DROP PRIMARY KEY CASCADE;
DROP TABLE AMS_ASSET_TYPE CASCADE CONSTRAINTS;

CREATE TABLE AMS_ASSET_TYPE
(
  ASSET_TYPE_ID       VARCHAR2(8 BYTE),
  ASSET_TYPE_NAME     VARCHAR2(40 BYTE),
  ASSET_TYPE_DEPT_ID  VARCHAR2(20 BYTE),
  ASSET_TYPE_REF      VARCHAR2(100 BYTE)
);


ALTER TABLE AMS_ASSET_TYPE ADD (
  PRIMARY KEY
 (ASSET_TYPE_ID));

ALTER TABLE AMS_ASSET_TYPE ADD (
  CONSTRAINT AMS_ASSET_TYPE_R01 
 FOREIGN KEY (ASSET_TYPE_REF) 
 REFERENCES AMS_ASSET_TYPE (ASSET_TYPE_ID));

