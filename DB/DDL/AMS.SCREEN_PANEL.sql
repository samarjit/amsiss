ALTER TABLE SCREEN_PANEL
 DROP PRIMARY KEY CASCADE;
DROP TABLE SCREEN_PANEL CASCADE CONSTRAINTS;

CREATE TABLE SCREEN_PANEL
(
  SCR_NAME        VARCHAR2(20 CHAR),
  PANEL_NAME      VARCHAR2(20 CHAR),
  TABLE_NAME      VARCHAR2(30 CHAR),
  PK_NAME         VARCHAR2(30 CHAR),
  SORTORDER       VARCHAR2(20 CHAR),
  PANELTYPE       VARCHAR2(3 CHAR),
  SPLWHERECLAUSE  VARCHAR2(255 CHAR),
  SELQUERY        VARCHAR2(4000 BYTE),
  CSS_CLASS       VARCHAR2(20 BYTE),
  RW_FLG          VARCHAR2(3 BYTE),
  RELATEDPANEL    VARCHAR2(20 BYTE)
);

COMMENT ON COLUMN SCREEN_PANEL.PANELTYPE IS 'This is 1 for buttonPanel and 2 for others. based on 1 key 1 column or 1 key two fields';


CREATE UNIQUE INDEX PK_SCREEN_PANEL ON SCREEN_PANEL
(SCR_NAME, PANEL_NAME);


ALTER TABLE SCREEN_PANEL ADD (
  CONSTRAINT PK_SCREEN_PANEL
 PRIMARY KEY
 (SCR_NAME, PANEL_NAME));

