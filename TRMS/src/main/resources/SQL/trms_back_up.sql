--------------------------------------------------------
--  File created - Wednesday-July-26-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADDITIONAL_DOCUMENTS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."ADDITIONAL_DOCUMENTS" 
   (	"F_ID" NUMBER, 
	"ADDITIONAL_DOC" BLOB, 
	"TYPE_OF_DOC" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("ADDITIONAL_DOC") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table APPLICATION_STATUS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."APPLICATION_STATUS" 
   (	"STATUS_ID" NUMBER, 
	"SUPERVISOR_APPROVAL" NUMBER, 
	"HEAD_APPROVAL" NUMBER, 
	"BENCO_APPROVAL" NUMBER, 
	"DIRECTOR_MANG_APPROVAL" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table APPROVAL_TABLE
--------------------------------------------------------

  CREATE TABLE "ADMIN"."APPROVAL_TABLE" 
   (	"F_ID" NUMBER, 
	"SUPERVISOR" NUMBER, 
	"DEPARTMENT_HEAD" NUMBER, 
	"BENCO" NUMBER, 
	"DIRECTOR_MANAGER" NUMBER, 
	"STATUS" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "ADMIN"."DEPARTMENT" 
   (	"D_ID" NUMBER, 
	"DEPARTMENT" VARCHAR2(26 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "ADMIN"."EMPLOYEE" 
   (	"P_ID" NUMBER, 
	"FIRSTNAME" VARCHAR2(26 BYTE), 
	"LASTNAME" VARCHAR2(26 BYTE), 
	"STREET" VARCHAR2(26 BYTE), 
	"CITY" VARCHAR2(26 BYTE), 
	"STATE" VARCHAR2(26 BYTE), 
	"ZIP_CODE" NUMBER, 
	"PHONE_NUMBER" NUMBER, 
	"EMAIL" VARCHAR2(26 BYTE), 
	"TITLE_ID" NUMBER, 
	"DEPARTMENT_ID" NUMBER, 
	"AVAILABLE_REIMBURSEMENT" NUMBER(4,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEE_SUPERVISOR
--------------------------------------------------------

  CREATE TABLE "ADMIN"."EMPLOYEE_SUPERVISOR" 
   (	"S_ID" NUMBER, 
	"E_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REIMBURSEMENT_FORMS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."REIMBURSEMENT_FORMS" 
   (	"F_ID" NUMBER, 
	"P_ID" NUMBER, 
	"START_DATE" DATE, 
	"START_TIME" TIMESTAMP (6), 
	"STREET_ADDRESS" VARCHAR2(26 BYTE), 
	"CITY" VARCHAR2(26 BYTE), 
	"STATE" VARCHAR2(26 BYTE), 
	"ZIP_CODE" NUMBER, 
	"REQUESTED_AMOUNT" NUMBER, 
	"TYPE_OF_EVENT" NUMBER, 
	"GRADING_FORMAT" BLOB, 
	"DESCRIPTION" VARCHAR2(2000 BYTE), 
	"WORK_RELATED_JUSTIFICATION" VARCHAR2(2000 BYTE), 
	"ESTIMATED_TIME_OFF" NUMBER, 
	"FINAL_GRADE" VARCHAR2(1 BYTE), 
	"FINAL_PRESENTATION" BLOB, 
	"STATUS" VARCHAR2(7 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("GRADING_FORMAT") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("FINAL_PRESENTATION") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table REQUEST_INFORMATION
--------------------------------------------------------

  CREATE TABLE "ADMIN"."REQUEST_INFORMATION" 
   (	"R_ID" NUMBER, 
	"F_ID" NUMBER, 
	"MESSAGE" VARCHAR2(2000 BYTE), 
	"SENT_REQUEST" TIMESTAMP (6), 
	"RESPONDER_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TITLE
--------------------------------------------------------

  CREATE TABLE "ADMIN"."TITLE" 
   (	"T_ID" NUMBER, 
	"TITLE" VARCHAR2(26 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TRANSACTION_LOG
--------------------------------------------------------

  CREATE TABLE "ADMIN"."TRANSACTION_LOG" 
   (	"LOG_ID" NUMBER, 
	"P_ID" NUMBER, 
	"F_ID" NUMBER, 
	"ACTION" VARCHAR2(7 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TYPE_OF_DOCUMENTS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."TYPE_OF_DOCUMENTS" 
   (	"TOD_ID" NUMBER, 
	"TYPE_OF_DOC" VARCHAR2(26 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TYPE_OF_EVENTS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."TYPE_OF_EVENTS" 
   (	"TOE_ID" NUMBER, 
	"EVENT" VARCHAR2(25 BYTE), 
	"PERCENTAGE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into ADMIN.ADDITIONAL_DOCUMENTS
SET DEFINE OFF;
REM INSERTING into ADMIN.APPLICATION_STATUS
SET DEFINE OFF;
REM INSERTING into ADMIN.APPROVAL_TABLE
SET DEFINE OFF;
REM INSERTING into ADMIN.DEPARTMENT
SET DEFINE OFF;
REM INSERTING into ADMIN.EMPLOYEE
SET DEFINE OFF;
REM INSERTING into ADMIN.EMPLOYEE_SUPERVISOR
SET DEFINE OFF;
REM INSERTING into ADMIN.REIMBURSEMENT_FORMS
SET DEFINE OFF;
REM INSERTING into ADMIN.REQUEST_INFORMATION
SET DEFINE OFF;
REM INSERTING into ADMIN.TITLE
SET DEFINE OFF;
REM INSERTING into ADMIN.TRANSACTION_LOG
SET DEFINE OFF;
REM INSERTING into ADMIN.TYPE_OF_DOCUMENTS
SET DEFINE OFF;
REM INSERTING into ADMIN.TYPE_OF_EVENTS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_STATUS_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."PK_STATUS_ID" ON "ADMIN"."APPLICATION_STATUS" ("STATUS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_DEPARTMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."PK_DEPARTMENT" ON "ADMIN"."DEPARTMENT" ("D_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PID
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."PK_PID" ON "ADMIN"."EMPLOYEE" ("P_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_FORMID
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."PK_FORMID" ON "ADMIN"."REIMBURSEMENT_FORMS" ("F_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_RID
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."PK_RID" ON "ADMIN"."REQUEST_INFORMATION" ("R_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_TITLE
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."PK_TITLE" ON "ADMIN"."TITLE" ("T_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_LOGID
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."PK_LOGID" ON "ADMIN"."TRANSACTION_LOG" ("LOG_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_TOD
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."PK_TOD" ON "ADMIN"."TYPE_OF_DOCUMENTS" ("TOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_TOE
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."PK_TOE" ON "ADMIN"."TYPE_OF_EVENTS" ("TOE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger EMPLOYEE_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."EMPLOYEE_TRIGGER" 
    BEFORE INSERT ON EMPLOYEE
    FOR EACH ROW
    BEGIN
        SELECT EMPLOYEE_SEQ.NEXTVAL INTO :new.P_ID FROM Dual;
    END;

/
ALTER TRIGGER "ADMIN"."EMPLOYEE_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REIMBURSEMENT_FORMS_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."REIMBURSEMENT_FORMS_TRIGGER" 
    BEFORE INSERT ON REIMBURSEMENT_FORMS
    FOR EACH ROW
    BEGIN
        SELECT REIMBURSEMENT_FORMS_SEQ.NEXTVAL INTO :new.F_ID FROM Dual;
    END;

/
ALTER TRIGGER "ADMIN"."REIMBURSEMENT_FORMS_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REQUEST_INFORMATION_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."REQUEST_INFORMATION_TRIGGER" 
    BEFORE INSERT ON REQUEST_INFORMATION
    FOR EACH ROW
    BEGIN
        SELECT REQUEST_INFORMATION_SEQ.NEXTVAL INTO :new.R_ID FROM Dual;
    END;

/
ALTER TRIGGER "ADMIN"."REQUEST_INFORMATION_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRANSACTION_LOG_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."TRANSACTION_LOG_TRIGGER" 
    BEFORE INSERT ON TRANSACTION_LOG
    FOR EACH ROW
    BEGIN
        SELECT TRANSACTION_LOG_SEQ.NEXTVAL INTO :new.LOG_ID FROM Dual;
    END;

/
ALTER TRIGGER "ADMIN"."TRANSACTION_LOG_TRIGGER" ENABLE;
--------------------------------------------------------
--  Constraints for Table ADDITIONAL_DOCUMENTS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."ADDITIONAL_DOCUMENTS" MODIFY ("TYPE_OF_DOC" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."ADDITIONAL_DOCUMENTS" MODIFY ("ADDITIONAL_DOC" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."ADDITIONAL_DOCUMENTS" MODIFY ("F_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table APPLICATION_STATUS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."APPLICATION_STATUS" ADD CONSTRAINT "PK_STATUS_ID" PRIMARY KEY ("STATUS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "ADMIN"."DEPARTMENT" ADD CONSTRAINT "PK_DEPARTMENT" PRIMARY KEY ("D_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "ADMIN"."EMPLOYEE" ADD CONSTRAINT "PK_PID" PRIMARY KEY ("P_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ADMIN"."EMPLOYEE" MODIFY ("DEPARTMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."EMPLOYEE" MODIFY ("TITLE_ID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."EMPLOYEE" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."EMPLOYEE" MODIFY ("PHONE_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."EMPLOYEE" MODIFY ("ZIP_CODE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."EMPLOYEE" MODIFY ("STATE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."EMPLOYEE" MODIFY ("CITY" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."EMPLOYEE" MODIFY ("STREET" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."EMPLOYEE" MODIFY ("LASTNAME" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."EMPLOYEE" MODIFY ("FIRSTNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYEE_SUPERVISOR
--------------------------------------------------------

  ALTER TABLE "ADMIN"."EMPLOYEE_SUPERVISOR" MODIFY ("E_ID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."EMPLOYEE_SUPERVISOR" MODIFY ("S_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REIMBURSEMENT_FORMS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."REIMBURSEMENT_FORMS" ADD CONSTRAINT "PK_FORMID" PRIMARY KEY ("F_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ADMIN"."REIMBURSEMENT_FORMS" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."REIMBURSEMENT_FORMS" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."REIMBURSEMENT_FORMS" MODIFY ("GRADING_FORMAT" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."REIMBURSEMENT_FORMS" MODIFY ("TYPE_OF_EVENT" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."REIMBURSEMENT_FORMS" MODIFY ("REQUESTED_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."REIMBURSEMENT_FORMS" MODIFY ("ZIP_CODE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."REIMBURSEMENT_FORMS" MODIFY ("STATE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."REIMBURSEMENT_FORMS" MODIFY ("CITY" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."REIMBURSEMENT_FORMS" MODIFY ("STREET_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."REIMBURSEMENT_FORMS" MODIFY ("START_TIME" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."REIMBURSEMENT_FORMS" MODIFY ("START_DATE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."REIMBURSEMENT_FORMS" MODIFY ("P_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REQUEST_INFORMATION
--------------------------------------------------------

  ALTER TABLE "ADMIN"."REQUEST_INFORMATION" ADD CONSTRAINT "PK_RID" PRIMARY KEY ("R_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TITLE
--------------------------------------------------------

  ALTER TABLE "ADMIN"."TITLE" ADD CONSTRAINT "PK_TITLE" PRIMARY KEY ("T_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRANSACTION_LOG
--------------------------------------------------------

  ALTER TABLE "ADMIN"."TRANSACTION_LOG" ADD CONSTRAINT "PK_LOGID" PRIMARY KEY ("LOG_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TYPE_OF_DOCUMENTS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."TYPE_OF_DOCUMENTS" ADD CONSTRAINT "PK_TOD" PRIMARY KEY ("TOD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TYPE_OF_EVENTS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."TYPE_OF_EVENTS" ADD CONSTRAINT "PK_TOE" PRIMARY KEY ("TOE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ADMIN"."TYPE_OF_EVENTS" MODIFY ("PERCENTAGE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."TYPE_OF_EVENTS" MODIFY ("EVENT" NOT NULL ENABLE);
