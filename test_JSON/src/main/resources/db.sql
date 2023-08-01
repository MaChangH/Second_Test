create table jun02_fruit(
	f_name varchar2(10 char) primary key,
	f_price number(5) not null,
	f_location varchar2(10 char) not null
)

select * from jun02_fruit

insert into jun02_fruit values('포도',3200, '베트남');
insert into jun02_fruit values('귤',12200, '한국');
insert into jun02_fruit values('망고',5200, '인도네시아');
insert into jun02_fruit values('레몬',22200, '싱가폴');
insert into jun02_fruit values('감',7200, '한국');