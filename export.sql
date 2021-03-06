--------------------------------------------------------
--  File created - Wednesday-February-03-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "HR"."CUSTOMER" 
   (	"CUSTOMER_ID" NUMBER, 
	"CUSTOMER_NAME" VARCHAR2(20 BYTE), 
	"CUSTOMER_CONTACTNUMBER" NUMBER, 
	"CUSTOMER_ADDRESS" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "HR"."CATEGORY" 
   (	"CATEGORY_ID" NUMBER, 
	"CATEGORY_NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "HR"."PRODUCT" 
   (	"PRODUCT_ID" NUMBER, 
	"PRODUCT_NAME" VARCHAR2(20 BYTE), 
	"PRODUCT_QUANTITY" NUMBER, 
	"PRODUCT_PRICEPERUNIT" NUMBER, 
	"LAST_UPDATE" DATE, 
	"CATEGORY_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TRANSACTION
--------------------------------------------------------

  CREATE TABLE "HR"."TRANSACTION" 
   (	"TRANSACTION_ID" NUMBER, 
	"PRODUCT_ID" NUMBER, 
	"CUSTOMER_ID" NUMBER, 
	"DATE_OF_TRANSACTION" DATE, 
	"AMOUNT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.CUSTOMER
SET DEFINE OFF;
Insert into HR.CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_CONTACTNUMBER,CUSTOMER_ADDRESS) values (100,'Anusha',1000000000,'New York');
Insert into HR.CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_CONTACTNUMBER,CUSTOMER_ADDRESS) values (101,'Nishank',2000000001,'New Jersey');
Insert into HR.CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_CONTACTNUMBER,CUSTOMER_ADDRESS) values (102,'Vishal',3000000008,'Texas');
Insert into HR.CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_CONTACTNUMBER,CUSTOMER_ADDRESS) values (103,'Aakash',5552451452,'Kentucky');
Insert into HR.CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_CONTACTNUMBER,CUSTOMER_ADDRESS) values (104,'Amulya',8562541264,'Atlanta');
Insert into HR.CUSTOMER (CUSTOMER_ID,CUSTOMER_NAME,CUSTOMER_CONTACTNUMBER,CUSTOMER_ADDRESS) values (105,'Nitin',1526582035,'Missouri');
REM INSERTING into HR.CATEGORY
SET DEFINE OFF;
Insert into HR.CATEGORY (CATEGORY_ID,CATEGORY_NAME) values (1,'Food');
Insert into HR.CATEGORY (CATEGORY_ID,CATEGORY_NAME) values (4,'Accessories');
Insert into HR.CATEGORY (CATEGORY_ID,CATEGORY_NAME) values (5,'Beauty');
Insert into HR.CATEGORY (CATEGORY_ID,CATEGORY_NAME) values (2,'Electronics');
Insert into HR.CATEGORY (CATEGORY_ID,CATEGORY_NAME) values (3,'Clothing');
REM INSERTING into HR.PRODUCT
SET DEFINE OFF;
Insert into HR.PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_QUANTITY,PRODUCT_PRICEPERUNIT,LAST_UPDATE,CATEGORY_ID) values (1,'Maggie',1100,3,to_date('01-FEB-16','DD-MON-RR'),1);
Insert into HR.PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_QUANTITY,PRODUCT_PRICEPERUNIT,LAST_UPDATE,CATEGORY_ID) values (2,'Pasta',1000,4,to_date('03-FEB-16','DD-MON-RR'),1);
Insert into HR.PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_QUANTITY,PRODUCT_PRICEPERUNIT,LAST_UPDATE,CATEGORY_ID) values (3,'Oil',100,10,to_date('03-FEB-16','DD-MON-RR'),1);
Insert into HR.PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_QUANTITY,PRODUCT_PRICEPERUNIT,LAST_UPDATE,CATEGORY_ID) values (4,'iPhone6',100,800,to_date('03-FEB-16','DD-MON-RR'),2);
Insert into HR.PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_QUANTITY,PRODUCT_PRICEPERUNIT,LAST_UPDATE,CATEGORY_ID) values (5,'iPad Air',50,500,to_date('03-FEB-16','DD-MON-RR'),2);
Insert into HR.PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_QUANTITY,PRODUCT_PRICEPERUNIT,LAST_UPDATE,CATEGORY_ID) values (6,'MAC Book',80,1000,to_date('03-FEB-16','DD-MON-RR'),2);
Insert into HR.PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_QUANTITY,PRODUCT_PRICEPERUNIT,LAST_UPDATE,CATEGORY_ID) values (7,'Shirts',1000,20,to_date('03-FEB-16','DD-MON-RR'),3);
Insert into HR.PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_QUANTITY,PRODUCT_PRICEPERUNIT,LAST_UPDATE,CATEGORY_ID) values (8,'Jeans',1000,30,to_date('02-FEB-16','DD-MON-RR'),3);
Insert into HR.PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_QUANTITY,PRODUCT_PRICEPERUNIT,LAST_UPDATE,CATEGORY_ID) values (9,'Hoodies',1200,50,to_date('03-FEB-16','DD-MON-RR'),3);
Insert into HR.PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_QUANTITY,PRODUCT_PRICEPERUNIT,LAST_UPDATE,CATEGORY_ID) values (10,'Belts',500,40,to_date('02-FEB-16','DD-MON-RR'),4);
Insert into HR.PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_QUANTITY,PRODUCT_PRICEPERUNIT,LAST_UPDATE,CATEGORY_ID) values (11,'Cap',600,20,to_date('01-FEB-16','DD-MON-RR'),4);
Insert into HR.PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_QUANTITY,PRODUCT_PRICEPERUNIT,LAST_UPDATE,CATEGORY_ID) values (12,'Ear rings',500,10,to_date('29-JAN-16','DD-MON-RR'),4);
Insert into HR.PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_QUANTITY,PRODUCT_PRICEPERUNIT,LAST_UPDATE,CATEGORY_ID) values (13,'Lip Balm',200,5,to_date('01-FEB-16','DD-MON-RR'),5);
Insert into HR.PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_QUANTITY,PRODUCT_PRICEPERUNIT,LAST_UPDATE,CATEGORY_ID) values (14,'Lip Gloss',100,15,to_date('01-FEB-16','DD-MON-RR'),5);
Insert into HR.PRODUCT (PRODUCT_ID,PRODUCT_NAME,PRODUCT_QUANTITY,PRODUCT_PRICEPERUNIT,LAST_UPDATE,CATEGORY_ID) values (15,'Makeup kit',60,45,to_date('02-FEB-16','DD-MON-RR'),5);
REM INSERTING into HR.TRANSACTION
SET DEFINE OFF;
Insert into HR.TRANSACTION (TRANSACTION_ID,PRODUCT_ID,CUSTOMER_ID,DATE_OF_TRANSACTION,AMOUNT) values (1,5,101,to_date('01-FEB-16','DD-MON-RR'),500);
Insert into HR.TRANSACTION (TRANSACTION_ID,PRODUCT_ID,CUSTOMER_ID,DATE_OF_TRANSACTION,AMOUNT) values (2,6,100,to_date('01-FEB-16','DD-MON-RR'),1000);
Insert into HR.TRANSACTION (TRANSACTION_ID,PRODUCT_ID,CUSTOMER_ID,DATE_OF_TRANSACTION,AMOUNT) values (3,8,102,to_date('03-FEB-16','DD-MON-RR'),200);
Insert into HR.TRANSACTION (TRANSACTION_ID,PRODUCT_ID,CUSTOMER_ID,DATE_OF_TRANSACTION,AMOUNT) values (4,4,103,to_date('02-FEB-16','DD-MON-RR'),100);
Insert into HR.TRANSACTION (TRANSACTION_ID,PRODUCT_ID,CUSTOMER_ID,DATE_OF_TRANSACTION,AMOUNT) values (5,15,104,to_date('03-JAN-16','DD-MON-RR'),135);
Insert into HR.TRANSACTION (TRANSACTION_ID,PRODUCT_ID,CUSTOMER_ID,DATE_OF_TRANSACTION,AMOUNT) values (6,6,105,to_date('03-JAN-16','DD-MON-RR'),1000);
--------------------------------------------------------
--  DDL for Index CUSTOMER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."CUSTOMER_PK" ON "HR"."CUSTOMER" ("CUSTOMER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."CATEGORY_PK" ON "HR"."CATEGORY" ("CATEGORY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."PRODUCT_PK" ON "HR"."PRODUCT" ("PRODUCT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TRANSACTION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."TRANSACTION_PK" ON "HR"."TRANSACTION" ("TRANSACTION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "HR"."CUSTOMER" ADD CONSTRAINT "CUSTOMER_PK" PRIMARY KEY ("CUSTOMER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."CUSTOMER" MODIFY ("CUSTOMER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."CUSTOMER" MODIFY ("CUSTOMER_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."CUSTOMER" MODIFY ("CUSTOMER_CONTACTNUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."CUSTOMER" MODIFY ("CUSTOMER_ADDRESS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "HR"."CATEGORY" ADD CONSTRAINT "CATEGORY_PK" PRIMARY KEY ("CATEGORY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."CATEGORY" MODIFY ("CATEGORY_ID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."CATEGORY" MODIFY ("CATEGORY_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "HR"."PRODUCT" ADD CONSTRAINT "PRODUCT_PK" PRIMARY KEY ("PRODUCT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "HR"."PRODUCT" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."PRODUCT" MODIFY ("PRODUCT_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."PRODUCT" MODIFY ("PRODUCT_QUANTITY" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."PRODUCT" MODIFY ("PRODUCT_PRICEPERUNIT" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."PRODUCT" MODIFY ("LAST_UPDATE" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."PRODUCT" MODIFY ("CATEGORY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TRANSACTION
--------------------------------------------------------

  ALTER TABLE "HR"."TRANSACTION" MODIFY ("TRANSACTION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."TRANSACTION" ADD CONSTRAINT "TRANSACTION_PK" PRIMARY KEY ("TRANSACTION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "HR"."PRODUCT" ADD CONSTRAINT "CATEGORY_ID_FK" FOREIGN KEY ("CATEGORY_ID")
	  REFERENCES "HR"."CATEGORY" ("CATEGORY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TRANSACTION
--------------------------------------------------------

  ALTER TABLE "HR"."TRANSACTION" ADD CONSTRAINT "CUSTOMER_ID_FK" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "HR"."CUSTOMER" ("CUSTOMER_ID") ENABLE;
 
  ALTER TABLE "HR"."TRANSACTION" ADD CONSTRAINT "PRODUCT_ID_FK" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "HR"."PRODUCT" ("PRODUCT_ID") ENABLE;
--------------------------------------------------------
--  DDL for Trigger CUSTOMER_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."CUSTOMER_TRG" BEFORE INSERT ON CUSTOMER 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.CUSTOMER_ID IS NULL THEN
      SELECT CUSTOMER_SEQ.NEXTVAL INTO :NEW.CUSTOMER_ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."CUSTOMER_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CATEGORY_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."CATEGORY_TRG" BEFORE INSERT ON CATEGORY 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.CATEGORY_ID IS NULL THEN
      SELECT CATEGORY_SEQ.NEXTVAL INTO :NEW.CATEGORY_ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."CATEGORY_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PRODUCT_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."PRODUCT_TRG" BEFORE INSERT ON PRODUCT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.PRODUCT_ID IS NULL THEN
      SELECT PRODUCT_SEQ.NEXTVAL INTO :NEW.PRODUCT_ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."PRODUCT_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRANSACTION_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TRANSACTION_TRG" BEFORE INSERT ON TRANSACTION 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.TRANSACTION_ID and NEW.CONFIRMATION_NUMBER IS NULL THEN
      SELECT TRANSACTION_SEQ.NEXTVAL INTO :NEW.TRANSACTION_ID FROM DUAL;
      SELECT TRANSACTION_SEQ.NEXTVAL INTO :NEW.CONFIRMATION_NUMBER FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "HR"."TRANSACTION_TRG" DISABLE;
--------------------------------------------------------
--  DDL for Trigger TRANSACTION_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HR"."TRANSACTION_ID" 
   before insert on "HR"."TRANSACTION" 
   for each row 
begin  
   if inserting then 
      if :NEW."TRANSACTION_ID" is null then 
         select TRANSACTION_SEQ.nextval into :NEW."TRANSACTION_ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "HR"."TRANSACTION_ID" ENABLE;
