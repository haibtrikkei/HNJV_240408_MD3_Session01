create database DB_JV240408;
use DB_JV240408;
create table categories(
	cate_id int auto_increment primary key,
    cate_name varchar(100) unique not null,
    status bit);

create table products(
	pro_id int auto_increment primary key,
    product_name varchar(100) not null,
    producer varchar(100),
    year_making int,
    expire_date date,
    quantity int check (quantity>=0),
    price double check (price>=0) default 0,
    cate_id int,
    foreign key (cate_id) references categories(cate_id));
    
create table people(
	person_id int auto_increment primary key,
    first_name varchar(20) not null,
    last_name varchar(30) not null,
    birthday date,
    address varchar(200),
    foreign key (person_id) references identifier(person_id));

create table identifier(
	person_id int primary key,
    figure_1 varchar(100) not null unique,
    figure_2 varchar(100) not null unique,
    figure_3 varchar(100) not null unique,
    figure_4 varchar(100) not null unique,
    figure_5 varchar(100) not null unique,
    figure_6 varchar(100) not null unique,
    figure_7 varchar(100) not null unique,
    figure_8 varchar(100) not null unique,
    figure_9 varchar(100) not null unique,
    figure_10 varchar(100) not null unique,
    idenity_regconize varchar(100) not null unique,
    created_date date,
    created_place varchar(100));
    
# insert data
insert into categories(cate_name,status) values ('Điện tử',1);
insert into categories(cate_name,status) values ('Điện lạnh',1);
insert into categories(cate_name,status) values ('Điện dân dụng',1);
insert into categories(cate_name,status) values ('Thời trang nam',1);
insert into categories(cate_name,status) values ('Thời trang nữ',1);

select * from categories;