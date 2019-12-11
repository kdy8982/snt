--------------------------------------------------------
--  파일이 생성됨 - 수요일-12월-11-2019   
--------------------------------------------------------
DROP SEQUENCE "BOARD_SEQ";
DROP SEQUENCE "FREE_BOARD_SEQ";
DROP SEQUENCE "NOTICE_BOARD_SEQ";
DROP TABLE "DEPARTMENT" cascade constraints;
DROP TABLE "EMPLOYEE" cascade constraints;
DROP TABLE "FREE_BOARD" cascade constraints;
DROP TABLE "NOTICE_BOARD" cascade constraints;
--------------------------------------------------------
--  DDL for Sequence BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FREE_BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "FREE_BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NOTICE_BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "DEPARTMENT" 
   (	"DEPARTMENT_ID" NUMBER, 
	"DEPARTMENT_NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "EMPLOYEE" 
   (	"EMPLOYEE_ID" NUMBER, 
	"EMPLOYEE_NAME" VARCHAR2(30 BYTE), 
	"DEPARTMENT_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FREE_BOARD
--------------------------------------------------------

  CREATE TABLE "FREE_BOARD" 
   (	"FREE_BOARD_ID" NUMBER, 
	"FREE_BOARD_TITLE" VARCHAR2(100 BYTE), 
	"FREE_BOARD_CONTENT" VARCHAR2(4000 BYTE), 
	"FREE_BOARD_NAME" VARCHAR2(20 BYTE), 
	"FREE_BOARD_CREATE_DATE" DATE, 
	"DEPARTMENT_ID" NUMBER, 
	"EMPLOYEE_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NOTICE_BOARD
--------------------------------------------------------

  CREATE TABLE "NOTICE_BOARD" 
   (	"NOTICE_BOARD_ID" NUMBER, 
	"NOTICE_BOARD_TITLE" VARCHAR2(100 BYTE), 
	"NOTICE_BOARD_CONTENT" VARCHAR2(4000 BYTE), 
	"NOTICE_BOARD_NAME" VARCHAR2(20 BYTE), 
	"NOTICE_BOARD_CREATE_DATE" DATE, 
	"DEPARTMENT_ID" NUMBER, 
	"EMPLOYEE_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into DEPARTMENT
SET DEFINE OFF;
Insert into DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME) values (1,'임원실');
Insert into DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME) values (2,'고객지원팀');
Insert into DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME) values (3,'EKP개발팀');
Insert into DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME) values (4,'경영지원팀');
Insert into DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME) values (5,'기술연구소');
Insert into DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME) values (6,'EKP사업팀');
REM INSERTING into EMPLOYEE
SET DEFINE OFF;
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (1,'정병철',1);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (2,'금교원',1);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (3,'노주현',1);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (4,'최미나',2);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (5,'김민우',2);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (6,'이홍섭',2);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (7,'이중현',2);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (8,'손병권',2);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (9,'김정환',2);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (10,'송정섭',3);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (11,'한유진',3);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (12,'채솔',3);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (13,'김수빈',4);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (14,'최승환',5);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (15,'조미경',5);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (16,'장재호',5);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (17,'김대연',5);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (18,'조상희',5);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (19,'곽호원',5);
Insert into EMPLOYEE (EMPLOYEE_ID,EMPLOYEE_NAME,DEPARTMENT_ID) values (20,'손여정',6);
REM INSERTING into FREE_BOARD
SET DEFINE OFF;
Insert into FREE_BOARD (FREE_BOARD_ID,FREE_BOARD_TITLE,FREE_BOARD_CONTENT,FREE_BOARD_NAME,FREE_BOARD_CREATE_DATE,DEPARTMENT_ID,EMPLOYEE_ID) values (2,'안녕하세요. 신입사원 곽호원입니다.','열심히 하겠습니다.','자유',to_date('19/12/02','RR/MM/DD'),5,19);
Insert into FREE_BOARD (FREE_BOARD_ID,FREE_BOARD_TITLE,FREE_BOARD_CONTENT,FREE_BOARD_NAME,FREE_BOARD_CREATE_DATE,DEPARTMENT_ID,EMPLOYEE_ID) values (3,'안녕하세요. 신입사원 조상희 입니다.','감사합니다.','자유',to_date('19/12/03','RR/MM/DD'),5,18);
Insert into FREE_BOARD (FREE_BOARD_ID,FREE_BOARD_TITLE,FREE_BOARD_CONTENT,FREE_BOARD_NAME,FREE_BOARD_CREATE_DATE,DEPARTMENT_ID,EMPLOYEE_ID) values (1,'안녕하세요. 신입사원 김대연입니다.','잘부탁드립니다.','자유',to_date('19/12/01','RR/MM/DD'),5,17);
Insert into FREE_BOARD (FREE_BOARD_ID,FREE_BOARD_TITLE,FREE_BOARD_CONTENT,FREE_BOARD_NAME,FREE_BOARD_CREATE_DATE,DEPARTMENT_ID,EMPLOYEE_ID) values (41,'안녕하세요 반갑습니다. ','<div align="" style=""><p><span style="font-family: &quot;Malgun Gothic&quot;; font-size: 14px; background-color: rgb(239, 239, 239);">잘부탁드립니다.</span><br></p><p><span style="font-family: &quot;Malgun Gothic&quot;; font-size: 14px; background-color: rgb(239, 239, 239);"><br></span></p><p><span style="font-family: &quot;Malgun Gothic&quot;; font-size: 14px; background-color: rgb(239, 239, 239);"><span style="background-color: rgb(51, 51, 51); color: rgb(255, 255, 0);">감사합니다</span>.</span></p><p><span style="font-family: &quot;Malgun Gothic&quot;; font-size: 14px; background-color: rgb(239, 239, 239);"><br></span></p><p><span style="font-family: &quot;Malgun Gothic&quot;; font-size: 14px; background-color: rgb(239, 239, 239);"><br></span></p></div>','자유',to_date('19/12/11','RR/MM/DD'),5,17);
REM INSERTING into NOTICE_BOARD
SET DEFINE OFF;
Insert into NOTICE_BOARD (NOTICE_BOARD_ID,NOTICE_BOARD_TITLE,NOTICE_BOARD_CONTENT,NOTICE_BOARD_NAME,NOTICE_BOARD_CREATE_DATE,DEPARTMENT_ID,EMPLOYEE_ID) values (1,'개폐기 교체에 따른 전기공급 중지안내(2019년 12월 4일)','개페기 교체에 따른 전기공급 중지를 아래와 같이 안내드리오니, 업무에 참고하시기 바라며, 세부사항은 첨부파일을 통해 확인 바랍니다.','공지',to_date('19/11/01','RR/MM/DD'),4,13);
Insert into NOTICE_BOARD (NOTICE_BOARD_ID,NOTICE_BOARD_TITLE,NOTICE_BOARD_CONTENT,NOTICE_BOARD_NAME,NOTICE_BOARD_CREATE_DATE,DEPARTMENT_ID,EMPLOYEE_ID) values (2,'2019년 12월 잔여연차 안내','아래와 같이 안내 드리오니 확인바랍니다','공지',to_date('19/11/02','RR/MM/DD'),4,13);
Insert into NOTICE_BOARD (NOTICE_BOARD_ID,NOTICE_BOARD_TITLE,NOTICE_BOARD_CONTENT,NOTICE_BOARD_NAME,NOTICE_BOARD_CREATE_DATE,DEPARTMENT_ID,EMPLOYEE_ID) values (4,'2020년도 사내 수첩 배부 안내','2020년도 사내 수첩 제작이 완료되어 아래와 같이 안내드리오니, 필요하신 분들은 참고하시어 수령해 주시기 바랍니다.','공지',to_date('19/11/03','RR/MM/DD'),4,13);
Insert into NOTICE_BOARD (NOTICE_BOARD_ID,NOTICE_BOARD_TITLE,NOTICE_BOARD_CONTENT,NOTICE_BOARD_NAME,NOTICE_BOARD_CREATE_DATE,DEPARTMENT_ID,EMPLOYEE_ID) values (5,'고용보험로율 인상','2019년 10월 1일부터 급여 고용보험률이 0.3% 인상되어 적용되므로 확인하시길 바랍니다.','공지',to_date('19/11/04','RR/MM/DD'),4,13);
Insert into NOTICE_BOARD (NOTICE_BOARD_ID,NOTICE_BOARD_TITLE,NOTICE_BOARD_CONTENT,NOTICE_BOARD_NAME,NOTICE_BOARD_CREATE_DATE,DEPARTMENT_ID,EMPLOYEE_ID) values (6,'12월 개인경비 날짜 변경안내','12월 개인경비 지급이 출장으로 인하여 12일 지급될 예정입니다. 확인 부탁드립니다.','공지',to_date('19/11/05','RR/MM/DD'),4,13);
Insert into NOTICE_BOARD (NOTICE_BOARD_ID,NOTICE_BOARD_TITLE,NOTICE_BOARD_CONTENT,NOTICE_BOARD_NAME,NOTICE_BOARD_CREATE_DATE,DEPARTMENT_ID,EMPLOYEE_ID) values (7,'연말 회식','2019년 12월 29일에 회사 단체 회식이 있습니다. 일정을 조율하셔서 모두가 참여하는 자리가 되었으면 좋겠습니다.','공지',to_date('19/12/01','RR/MM/DD'),4,13);
Insert into NOTICE_BOARD (NOTICE_BOARD_ID,NOTICE_BOARD_TITLE,NOTICE_BOARD_CONTENT,NOTICE_BOARD_NAME,NOTICE_BOARD_CREATE_DATE,DEPARTMENT_ID,EMPLOYEE_ID) values (8,'2019년 연말정산','2019년 연말정산을 아래와 같이 진행하오니 확인 부탁드립니다','공지',to_date('19/12/02','RR/MM/DD'),4,13);
Insert into NOTICE_BOARD (NOTICE_BOARD_ID,NOTICE_BOARD_TITLE,NOTICE_BOARD_CONTENT,NOTICE_BOARD_NAME,NOTICE_BOARD_CREATE_DATE,DEPARTMENT_ID,EMPLOYEE_ID) values (9,'고용보험률 인상','<p style="box-sizing: border-box; margin-bottom: 10px; font-family: &quot;Malgun Gothic&quot;; font-size: 12pt; color: rgb(97, 97, 97); background-color: rgb(255, 255, 255);">2109.10.01부터 급여 고용보험료율이&nbsp;</p><p style="box-sizing: border-box; margin-bottom: 10px; font-family: &quot;Malgun Gothic&quot;; font-size: 12pt; color: rgb(97, 97, 97); background-color: rgb(255, 255, 255);"><span style="box-sizing: border-box; font-size: 12pt;"><br style="box-sizing: border-box;"></span></p><p style="box-sizing: border-box; margin-bottom: 10px; font-family: &quot;Malgun Gothic&quot;; font-size: 12pt; color: rgb(97, 97, 97); background-color: rgb(255, 255, 255);"><span style="box-sizing: border-box; font-size: 12pt;">0.3% 인상되어 적용되므로 확인하시길바랍니다.</span></p>','공지',to_date('19/12/03','RR/MM/DD'),4,13);
Insert into NOTICE_BOARD (NOTICE_BOARD_ID,NOTICE_BOARD_TITLE,NOTICE_BOARD_CONTENT,NOTICE_BOARD_NAME,NOTICE_BOARD_CREATE_DATE,DEPARTMENT_ID,EMPLOYEE_ID) values (10,'공지','<div align="" style=""><div align="" style=""><p><b><span style="background-color: rgb(255, 167, 0); color: rgb(255, 255, 255);">2019년 한해 고생 많으셨고, 행복한 연말 보내세요</span><br></b></p><p><br></p><p>------------------------------------------------- 아 래 ------------------------------------<br></p><p><br></p><p>가. 기&nbsp; &nbsp; 간 : 2019. 12. 28. 이후</p><p>나. 장&nbsp; &nbsp; 소 : 복합기 앞 서랍장</p><p>다. 수&nbsp; &nbsp; 량 : 총 50 부.&nbsp; 끝.</p></div><p><br></p></div><p><br></p>','공지',to_date('19/12/04','RR/MM/DD'),4,13);
Insert into NOTICE_BOARD (NOTICE_BOARD_ID,NOTICE_BOARD_TITLE,NOTICE_BOARD_CONTENT,NOTICE_BOARD_NAME,NOTICE_BOARD_CREATE_DATE,DEPARTMENT_ID,EMPLOYEE_ID) values (11,'2019년 12월 신입사원 안내','<p><span style="font-family: 굴림체, gulimche; font-size: 10pt; background-color: rgb(255, 255, 255);">2019년도 11월 25일부로&nbsp; 사원채용을 아래와 같이 안내드립니다.</span><br></p><div style="box-sizing: border-box; color: rgb(97, 97, 97); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); line-height: 1.8;"><span style="box-sizing: border-box; font-size: 10pt; color: rgb(0, 0, 0);"><br style="box-sizing: border-box;"></span></div><div style="box-sizing: border-box; color: rgb(97, 97, 97); font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); line-height: 1.8;"><span style="box-sizing: border-box; font-size: 10pt; color: rgb(0, 0, 0); font-family: 굴림체, gulimche;">--------------------------------&nbsp; 아&nbsp; &nbsp; 래&nbsp;&nbsp;</span><span style="box-sizing: border-box; color: rgb(0, 0, 0); font-family: 굴림체, gulimche; font-size: 10pt;">--------------------------------</span></div><p style="box-sizing: border-box; margin-bottom: 10px; font-family: &quot;Malgun Gothic&quot;; font-size: 12pt; color: rgb(97, 97, 97); background-color: rgb(255, 255, 255);"></p><p class="MsoNormal" style="box-sizing: border-box; margin-bottom: 10px; font-family: &quot;Malgun Gothic&quot;; font-size: 12pt; color: rgb(97, 97, 97); background-color: rgb(255, 255, 255); line-height: 1.7;"><span lang="EN-US" style="box-sizing: border-box; font-family: 굴림체;"><span style="box-sizing: border-box; font-size: 10pt; font-family: 굴림체, gulimche;">&nbsp;1.</span></span><span style="box-sizing: border-box; font-family: 굴림체, gulimche; font-size: 10pt;">근무발령<span lang="EN-US" style="box-sizing: border-box;"><o:p style="box-sizing: border-box;"></o:p></span></span></p><p style="box-sizing: border-box; margin-bottom: 10px; font-family: &quot;Malgun Gothic&quot;; font-size: 12pt; color: rgb(97, 97, 97); background-color: rgb(255, 255, 255); line-height: 1.7;"></p><p class="MsoNormal" style="box-sizing: border-box; margin-bottom: 10px; font-family: &quot;Malgun Gothic&quot;; font-size: 12pt; color: rgb(97, 97, 97); background-color: rgb(255, 255, 255); line-height: 1.7;"><br></p>','공지',to_date('19/12/05','RR/MM/DD'),4,13);
--------------------------------------------------------
--  DDL for Index PK_DEPARTMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_DEPARTMENT" ON "DEPARTMENT" ("DEPARTMENT_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index NOTICE_BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOTICE_BOARD_PK" ON "NOTICE_BOARD" ("NOTICE_BOARD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DEPARTMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DEPARTMENT_PK" ON "DEPARTMENT" ("DEPARTMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FREE_BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FREE_BOARD_PK" ON "FREE_BOARD" ("FREE_BOARD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_EMPLOYEE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EMPLOYEE" ON "EMPLOYEE" ("EMPLOYEE_ID", "EMPLOYEE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EMPLOYEE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EMPLOYEE_PK" ON "EMPLOYEE" ("EMPLOYEE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table NOTICE_BOARD
--------------------------------------------------------

  ALTER TABLE "NOTICE_BOARD" ADD CONSTRAINT "NOTICE_BOARD_PK" PRIMARY KEY ("NOTICE_BOARD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NOTICE_BOARD" MODIFY ("NOTICE_BOARD_CREATE_DATE" NOT NULL ENABLE);
  ALTER TABLE "NOTICE_BOARD" MODIFY ("NOTICE_BOARD_NAME" NOT NULL ENABLE);
  ALTER TABLE "NOTICE_BOARD" MODIFY ("NOTICE_BOARD_TITLE" NOT NULL ENABLE);
  ALTER TABLE "NOTICE_BOARD" MODIFY ("NOTICE_BOARD_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "EMPLOYEE" MODIFY ("EMPLOYEE_ID" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" MODIFY ("EMPLOYEE_NAME" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" MODIFY ("DEPARTMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_PK" PRIMARY KEY ("EMPLOYEE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "DEPARTMENT" MODIFY ("DEPARTMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "DEPARTMENT" MODIFY ("DEPARTMENT_NAME" NOT NULL ENABLE);
  ALTER TABLE "DEPARTMENT" ADD CONSTRAINT "DEPARTMENT_PK" PRIMARY KEY ("DEPARTMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FREE_BOARD
--------------------------------------------------------

  ALTER TABLE "FREE_BOARD" MODIFY ("FREE_BOARD_CREATE_DATE" NOT NULL ENABLE);
  ALTER TABLE "FREE_BOARD" MODIFY ("FREE_BOARD_NAME" NOT NULL ENABLE);
  ALTER TABLE "FREE_BOARD" MODIFY ("FREE_BOARD_TITLE" NOT NULL ENABLE);
  ALTER TABLE "FREE_BOARD" MODIFY ("FREE_BOARD_ID" NOT NULL ENABLE);
  ALTER TABLE "FREE_BOARD" ADD CONSTRAINT "FREE_BOARD_PK" PRIMARY KEY ("FREE_BOARD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_FK1" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "DEPARTMENT" ("DEPARTMENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FREE_BOARD
--------------------------------------------------------

  ALTER TABLE "FREE_BOARD" ADD CONSTRAINT "FREE_BOARD_FK1" FOREIGN KEY ("EMPLOYEE_ID")
	  REFERENCES "EMPLOYEE" ("EMPLOYEE_ID") ENABLE;
  ALTER TABLE "FREE_BOARD" ADD CONSTRAINT "FREE_BOARD_FK2" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "DEPARTMENT" ("DEPARTMENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTICE_BOARD
--------------------------------------------------------

  ALTER TABLE "NOTICE_BOARD" ADD CONSTRAINT "NOTICE_BOARD_FK1" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "DEPARTMENT" ("DEPARTMENT_ID") ENABLE;
  ALTER TABLE "NOTICE_BOARD" ADD CONSTRAINT "NOTICE_BOARD_FK2" FOREIGN KEY ("EMPLOYEE_ID")
	  REFERENCES "EMPLOYEE" ("EMPLOYEE_ID") ENABLE;
