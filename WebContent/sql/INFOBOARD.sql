--------------------------------------------------------
--  파일이 생성됨 - 목요일-4월-16-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table INFOBOARD
--------------------------------------------------------

  CREATE TABLE "GENIE"."INFOBOARD" 
   (   "BOARD_NO" NUMBER(5,0), 
   "BOARD_MNO" NUMBER(5,0), 
   "BOARD_TITLE" VARCHAR2(100 BYTE), 
   "BOARD_CONT" VARCHAR2(2000 BYTE), 
   "BOARD_FILE" VARCHAR2(500 BYTE), 
   "BOARD_PWD" VARCHAR2(100 BYTE), 
   "BOARD_HIT" NUMBER(6,0) DEFAULT 0, 
   "BOARD_INIT" DATE, 
   "BOARD_ACCEPT" NUMBER(3,0) DEFAULT 0, 
   "BOARD_DATE" DATE DEFAULT to_char(to_date('99/01/01', 'yy/MM/dd')), 
   "BOARD_PARENT" NUMBER(5,0), 
   "BOARD_GROUP" NUMBER(5,0), 
   "BOARD_STEP" NUMBER(5,0), 
   "BOARD_WRITER" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into GENIE.INFOBOARD
SET DEFINE OFF;
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (1,-1,'삭제된 게시글입니다.','<p><img src="uploadFile/2020-4-6/b30a4d80-a3cc-4465-a84b-d9c64738ce57홍길동KakaoTalk_20200217_160714251.jpg
" style="width: 923px;">            </p>',null,'1234',1,to_date('20/04/06','RR/MM/DD'),1,to_date('20/04/06','RR/MM/DD'),0,1,0,null);
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (2,-1,'삭제된 게시글입니다.','<p>ㅁㄴㅇㄴㅇㅁㄹㄴㅇㅁㄹㄴㅇㅁㄻㄴㅇㄹ</p>',null,'1234',4,to_date('20/04/13','RR/MM/DD'),1,to_date('20/04/13','RR/MM/DD'),0,2,0,null);
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (3,-1,'삭제된 게시글입니다.','ㅁㄴㅇㄹㄴㅁㅇㄻㄴㅇㄹ',null,'1234',0,to_date('20/04/07','RR/MM/DD'),1,to_date('20/04/07','RR/MM/DD'),2,2,1,null);
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (17,101,'adfasdf','<p style="font-size:18px;"><b>dddddd예쁜 마음으로 주제에 맞는 글을 작성해주세요!</b></p><p style="font-size:18px;"><b><i class="far fa-kiss-wink-heart"><br></i></b></p><p style="font-size:18px;"><b><i class="far fa-kiss-wink-heart"><br></i></b></p><p style="font-size:18px;"><b><i class="far fa-kiss-wink-heart"><br></i></b></p>
            
            
            ',null,'1234',0,to_date('20/04/14','RR/MM/DD'),0,to_date('99/01/01','RR/MM/DD'),0,17,0,'홍길동');
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (5,102,'asdf','asdf',null,'1234',7,to_date('20/04/07','RR/MM/DD'),1,to_date('20/04/07','RR/MM/DD'),3,2,2,'이순신');
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (6,101,'승리','<p></p><p></p><p><img src="uploadFile/2020-4-8/6e2e9e9c-863b-4c3f-8784-c86b4a87242e홍길동마스터.PNG
" style="width: 50%;"><br></p><p>이겼어요!!</p><p><br></p><p><img src="uploadFile/2020-4-8/8552e53d-46de-47d8-b644-40a07a985b39홍길동KakaoTalk_20200217_160714251.jpg
" style="width: 25%;"><br></p><p>            </p>
            <br><br><br><p><b','uploadFile/2020-4-8/2020-4-8_thumb/6893e4e9-aab1-4526-9730-a28a96dbfff7홍길동KakaoTalk_20200217_160714251_thumb.PNG','1234',10,to_date('20/04/08','RR/MM/DD'),1,to_date('20/04/14','RR/MM/DD'),0,6,0,'홍길동');
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (7,101,'해리포터 testing','<p><iframe frameborder="0" src="//www.youtube.com/embed/H2aLzwv7iBk" width="640" height="360" class="note-video-clip"></iframe></p><p><br></p><p><br></p><p>해리포터입니다!</p>','uploadFile/2020-4-8/2020-4-8_thumb/8c5c3ae3-1a77-46d6-806a-caaf467674e8홍길동KakaoTalk_20200217_160714251_thumb.PNG','1234',62,to_date('20/04/08','RR/MM/DD'),1,to_date('20/04/08','RR/MM/DD'),0,7,0,'홍길동');
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (8,101,'aaaaaa','<p><img src="uploadFile/2020-4-8/b5bf20b0-e477-4de9-9f34-f085277dee87홍길동KakaoTalk_20200217_160714251.jpg
" style="width: 25%;">            </p>','uploadFile/2020-4-8/2020-4-8_thumb/b5bf20b0-e477-4de9-9f34-f085277dee87홍길동KakaoTalk_20200217_160714251_thumb.PNG','1234',2,to_date('20/04/08','RR/MM/DD'),0,to_date('99/01/01','RR/MM/DD'),0,8,0,'홍길동');
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (9,101,'책을읽어요','<p><img src="uploadFile/2020-4-8/7ef86355-ce73-4ed2-8b85-a4f7c4d75a0f홍길동book2.png
" style="width: 130px;"></p><p><br></p><p><br></p><p>히든이라 썸네일이 깨지나?</p><p>            </p>','uploadFile/2020-4-8/2020-4-8_thumb/7ef86355-ce73-4ed2-8b85-a4f7c4d75a0f홍길동book2_thumb.PNG','1234',5,to_date('20/04/08','RR/MM/DD'),0,to_date('99/01/01','RR/MM/DD'),0,9,0,'홍길동');
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (10,101,'한글입니다.','<p><img src="uploadFile/2020-4-8/2b415d54-6491-4a49-bb99-1f611e20ceb2홍길동book2.png
" style="width: 130px;"></p><p><br></p><p>zzzzzzzzzzzzzzzzzzzzzzddddddddddddddddddddddddddd</p><p>adsfsadf</p><p>            </p>
            
            
            ',null,'1234',69,to_date('20/04/08','RR/MM/DD'),1,to_date('99/01/01','RR/MM/DD'),0,10,0,'홍길동');
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (11,101,'한글입니다.','<p><img src="uploadFile/2020-4-8/2b415d54-6491-4a49-bb99-1f611e20ceb2홍길동book2.png
" style="width: 130px;"></p><p><br></p><p>zzzzzzzzzzzzzzzzzzzzzz</p><p>            </p>
            ','uploadFile/2020-4-8/2020-4-8_thumb/2020-4-8_thumb_thumb.PNG','1234',0,to_date('20/04/13','RR/MM/DD'),0,to_date('99/01/01','RR/MM/DD'),0,11,0,'홍길동');
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (13,101,'한글입니다.','<p><img src="uploadFile/2020-4-8/2b415d54-6491-4a49-bb99-1f611e20ceb2홍길동book2.png
" style="width: 130px;"></p><p><br></p><p>zzzzzzzzzzzzzzzzzzzzzz</p><p><br></p><p><br></p><p>33</p><p>            </p>
            ',null,'1234',0,to_date('20/04/13','RR/MM/DD'),0,to_date('99/01/01','RR/MM/DD'),0,13,0,'홍길동');
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (14,-1,'삭제된 게시글입니다.','<p><img src="uploadFile/2020-4-8/2b415d54-6491-4a49-bb99-1f611e20ceb2홍길동book2.png
" style="width: 130px;"></p><p><br></p><p>zzzzzzzzzzzzzzzzzzzzzz</p><p><br></p><p><br></p><p>222</p><p>            </p>
   ',null,'1234',0,to_date('20/04/13','RR/MM/DD'),1,to_date('20/04/16','RR/MM/DD'),0,14,0,null);
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (15,101,'한글입니다.','<p><img src="uploadFile/2020-4-8/2b415d54-6491-4a49-bb99-1f611e20ceb2홍길동book2.png
" style="width: 130px;"></p><p><br></p><p>zzzzzzzzzzzzzzzzzzzzzzddddd</p><p>            </p>
            ',null,'1234',0,to_date('20/04/13','RR/MM/DD'),0,to_date('99/01/01','RR/MM/DD'),0,15,0,'홍길동');
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (16,101,'한글입니다.','<p><img src="uploadFile/2020-4-8/2b415d54-6491-4a49-bb99-1f611e20ceb2홍길동book2.png
" style="width: 130px;"></p><p><br></p><p>zzzzzzzzzzzzzzzzzzzzzz.......................</p><p>asdfsdaf</p><p>a</p><p>            </p>
            
            
            
            ',null,'1234',0,to_date('20/04/13','RR/MM/DD'),0,to_date('99/01/01','RR/MM/DD'),0,16,0,'홍길동');
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (18,101,'adfaf','<p style="font-size:18px;"><b>예쁜 마음으로 주제에 맞는 글을 작성해주세요asdf!<i class="far fa-kiss-wink-heart"></i></b></p>
            
            ',null,'1234',0,to_date('20/04/14','RR/MM/DD'),0,to_date('99/01/01','RR/MM/DD'),0,18,0,'홍길동');
Insert into GENIE.INFOBOARD (BOARD_NO,BOARD_MNO,BOARD_TITLE,BOARD_CONT,BOARD_FILE,BOARD_PWD,BOARD_HIT,BOARD_INIT,BOARD_ACCEPT,BOARD_DATE,BOARD_PARENT,BOARD_GROUP,BOARD_STEP,BOARD_WRITER) values (20,-1,'삭제된 게시글입니다.','<b>나는야 홍길동이라네~~</b>',null,'1234',0,to_date('20/04/14','RR/MM/DD'),0,to_date('99/01/01','RR/MM/DD'),10,10,1,null);
--------------------------------------------------------
--  DDL for Index SYS_C007376
--------------------------------------------------------

  CREATE UNIQUE INDEX "GENIE"."SYS_C007376" ON "GENIE"."INFOBOARD" ("BOARD_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table INFOBOARD
--------------------------------------------------------

  ALTER TABLE "GENIE"."INFOBOARD" MODIFY ("BOARD_STEP" NOT NULL ENABLE);
  ALTER TABLE "GENIE"."INFOBOARD" MODIFY ("BOARD_GROUP" NOT NULL ENABLE);
  ALTER TABLE "GENIE"."INFOBOARD" ADD PRIMARY KEY ("BOARD_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "GENIE"."INFOBOARD" MODIFY ("BOARD_PWD" NOT NULL ENABLE);
  ALTER TABLE "GENIE"."INFOBOARD" MODIFY ("BOARD_CONT" NOT NULL ENABLE);
  ALTER TABLE "GENIE"."INFOBOARD" MODIFY ("BOARD_TITLE" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table INFOBOARD
--------------------------------------------------------

  ALTER TABLE "GENIE"."INFOBOARD" ADD CONSTRAINT "MNO_FK" FOREIGN KEY ("BOARD_MNO")
     REFERENCES "GENIE"."MEMBER_IN" ("M_NO") ENABLE;