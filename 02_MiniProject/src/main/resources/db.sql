create table miniproj_signup(
	c_id varchar2(10 char) primary key,
	c_pw varchar2(10 char) not null,
	c_name varchar2(10 char) not null,
	c_addr varchar2(200 char) not null,
	c_photo varchar2(200 char) not null,
	c_role char(1 char) not null
);

--drop table miniproj_signp cascade constraint purge
insert into miniproj_signup values ('mch1', 'mch1', '마창', '우리집주소','포토','택');

select * from miniproj_signup where (c_id = 'asd')

select * from miniproj_signup


create table miniproj_sns(
	c_no number(3) primary key,
	c_owner varchar2(10char ) not null,
	c_txt varchar2(300char) not null,
	c_when date not null,
	c_color char(7) not null
);

create sequence miniproj_sns_seq;

insert into miniproj_sns values(miniproj_sns_seq.nextval, '마창','내용입니당!!',sysdate, '#202020')
select * from miniproj_sns;
-----------------------------------
select * from miniproj_sns_reply
create table miniproj_sns_reply(

	cr_no number(5) primary key,
	cr_c_no number(4) nut null,
	cr_owner varchar2(10 char) not null,
	cr_txt varchar2(200 char) not null,
	cr_when date not null,
	
	constraint sns_reply1
		foreign key(cr_c_no) references miniproj_sns(c_no)
		on delete cascade
);
select * from miniproj_sns_reply
insert into miniproj_sns_reply values(1,1,'마창1','내용입니당', sysdate)
--------------------------------------------------

create sequence miniproj_sns_reply_seq;


create table miniproj_sns_reply(
	cr_no number(5) primary key,
	cr_c_no number(4) not null,
	cr_owner varchar2(10 char) not null,
	cr_txt varchar2(200 char) not null,
	cr_when date not null,
	constraint sns_reply2
		foreign key(cr_c_no) references miniproj_sns(c_no)
		on delete cascade
);

select * from miniproj_sns_reply;
create sequence miniproj_sns_reply_seq;








