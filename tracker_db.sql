drop database trackerdb;
drop user tracker;
create user tracker with password 'adminpost';
create database trackerdb with template=template0 owner=tracker;
\connect trackerdb;
alter default privileges grant all on tables to trckerdb;
alter default privileges grant all on sequences to trckerdb;

create table et_users(
user_id integer primary key not null,
first_name varchar(20) not null,
last_name varchar(20) not null,
email varchar(30) not null,
password text not null
);

create