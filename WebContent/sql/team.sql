-- 정보테이블
-- 번호, 종류, 제목, 내용, 조회수, 게시일
create table info(
 info_no number(10) primary key,
 info_genre varchar2(10) not null,
 info_title varchar2(100) not null,
 info_cont varchar2(5000) not null,
 info_hit number(5) default 0,
 info_date date
);

-- 게시물 번호 시퀀스
create sequence info_seq
start with 1
increment by 1
nocache;

-- 원두테이블
-- 원두번호, 나라번호, 원두이름, 향, 산도, 단맛, 쓴맛, 바디, 내용 
create table beans(
 beans_no number(10) primary key,
 cont_no number(10) not null,
 beans_name varchar2(30) not null,
 beans_aroma varchar2(30) not null,
 beans_acidity varchar2(30) not null,
 beans_sweet varchar2(30) not null,
 beans_bitter varchar2(30) not null,
 beans_aroma varchar2(30) not null,
 beans_cont varchar2(5000)
);

-- 나라테이블
-- 나라번호, 대룩, 나라, 주소, 내용
create table contry(
 cont_no number(10) primary key,
 cont_7 varchar2(30) not null,
 cont_name varchar2(100) not null,
 cont_add varchar2(300), 
 cont_cont varchar2(5000)
);

-- 추출방식테이블
-- 번호, 대분류, 방식이름, 내용
create table extra(
 extra_no number(10) primary key,
 extra_name varchar2(100) not null,
 extra_cont varchar2(5000)
);

-- 바리에이션테이블
-- 번호, 종류이름, 내용
create table variat(
 varia_no number(10) primary key,
 varia_name varchar2(100) not null,
 varia_cont varchar2(5000)
);

-- 블랜딩테이블
-- 번호, 방식이름
create table blend(
 blend_no number(10) primary key,
 blend_nane varchar2(100) not null
);

