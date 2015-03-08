-- Table Script
CREATE TABLE CORRESPONDENT_TYPE ( 
    CORRESPONDENT_TYPE_CODE NUMBER(3,0) NOT NULL, 
    DESCRIPTION VARCHAR2(200) NOT NULL, 
    QUALIFIER VARCHAR2(1) DEFAULT 'p' NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE CORRESPONDENT_TYPE 
ADD CONSTRAINT PK_CORRESPONDENT_TYPE 
PRIMARY KEY (CORRESPONDENT_TYPE_CODE);



-- View for Coeus compatibility 
CREATE OR REPLACE VIEW OSP$CORRESPONDENT_TYPE AS SELECT 
    CORRESPONDENT_TYPE_CODE, 
    DESCRIPTION, 
    QUALIFIER, 
    UPDATE_TIMESTAMP, 
    UPDATE_USER
FROM CORRESPONDENT_TYPE;


INSERT INTO CORRESPONDENT_TYPE ( CORRESPONDENT_TYPE_CODE, DESCRIPTION, QUALIFIER, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 1, 'Administrator', 'P', sysdate, user ); 
INSERT INTO CORRESPONDENT_TYPE ( CORRESPONDENT_TYPE_CODE, DESCRIPTION, QUALIFIER, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 2, 'CRC', 'P', sysdate, user ); 


-- Table Script
DROP TABLE PROTOCOL_CORRESPONDENCE;
DROP TABLE PROTO_CORRESP_TYPE;

CREATE TABLE PROTO_CORRESP_TYPE ( 
    PROTO_CORRESP_TYPE_CODE NUMBER(3,0) NOT NULL, 
    DESCRIPTION VARCHAR2(200) NOT NULL, 
    MODULE_ID VARCHAR2(1) DEFAULT 'Y' NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE PROTO_CORRESP_TYPE 
ADD CONSTRAINT PK_PROTO_CORRESP_TYPE 
PRIMARY KEY (PROTO_CORRESP_TYPE_CODE);



-- View for Coeus compatibility 
CREATE OR REPLACE VIEW OSP$PROTO_CORRESP_TYPE AS SELECT 
    PROTO_CORRESP_TYPE_CODE, 
    DESCRIPTION, 
    MODULE_ID, 
    UPDATE_TIMESTAMP, 
    UPDATE_USER
FROM PROTO_CORRESP_TYPE;


INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 1, 'Approval Letter', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 2, 'Rejection Letter', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 3, 'Notice Of Deferral', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 4, 'Substantive Revisions Required Letter', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 5, 'Expedited Approval Letter', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 6, 'Specific Minor Revisions Letter', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 7, 'Suspension notice', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 8, 'Termination Notice', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 9, 'Agenda Report', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 10, 'Schedule Minutes', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 11, 'Schedule Optional Report #1', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 12, 'Schedule Optional Report #2', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 13, 'Protocol Optional Report #1', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 20, 'Renewal Reminder Letter #1', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 21, 'Renewal Reminder Letter #2', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 22, 'Renewal Reminder Letter #3', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 23, 'Reminder to IRB Notification #1', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 24, 'Reminder to IRB Notification #2', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 25, 'Reminder to IRB Notification #3', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 26, 'Closure Notice', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 17, 'Grant Exemption Notice', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 14, 'Protocol Optional Report #2', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 15, 'Committee Roster Report', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 16, 'Withdrawal Notice', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 18, 'Protocol Submission Report #1', 'Y', sysdate, user ); 
INSERT INTO PROTO_CORRESP_TYPE ( PROTO_CORRESP_TYPE_CODE, DESCRIPTION, MODULE_ID, UPDATE_TIMESTAMP, UPDATE_USER ) 
VALUES ( 19, 'Protocol Submission Report #2', 'Y', sysdate, user ); 

CREATE TABLE PROTOCOL_CORRESPONDENCE (
    ID                       NUMBER(12,0) NOT NULL,
    PROTOCOL_NUMBER          VARCHAR2(20) NOT NULL,
    SEQUENCE_NUMBER          NUMBER(4) NOT NULL,
    ACTION_ID                NUMBER(6) NOT NULL,
    PROTOCOL_ID              NUMBER(12,0) NOT NULL,
    ACTION_ID_FK             NUMBER(12,0) NOT NULL,
    PROTO_CORRESP_TYPE_CODE  NUMBER(3,0) NOT NULL,
    CORRESPONDENCE           BLOB DEFAULT EMPTY_BLOB(),
    FINAL_FLAG               CHAR(1) NOT NULL,
    UPDATE_TIMESTAMP         DATE,
    UPDATE_USER              VARCHAR2(60),
    VER_NBR                  NUMBER(8,0) DEFAULT 1 NOT NULL,
    OBJ_ID                   VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);

ALTER TABLE PROTOCOL_CORRESPONDENCE
ADD CONSTRAINT PK_PROTOCOL_CORRESPONDENCE
PRIMARY KEY (ID);

ALTER TABLE PROTOCOL_CORRESPONDENCE
ADD CONSTRAINT FK_PROTOCOL_CORRESPONDENCE1
FOREIGN KEY (PROTOCOL_ID)
REFERENCES PROTOCOL (PROTOCOL_ID);

ALTER TABLE PROTOCOL_CORRESPONDENCE
ADD CONSTRAINT FK_PROTOCOL_CORRESPONDENCE2
FOREIGN KEY (ACTION_ID_FK)
REFERENCES PROTOCOL_ACTIONS (PROTOCOL_ACTION_ID);

ALTER TABLE PROTOCOL_CORRESPONDENCE
ADD CONSTRAINT FK_PROTOCOL_CORRESPONDENCE3
FOREIGN KEY (PROTO_CORRESP_TYPE_CODE)
REFERENCES PROTO_CORRESP_TYPE (PROTO_CORRESP_TYPE_CODE);


commit;