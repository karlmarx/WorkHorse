drop database WorkHorseDB;
create database WorkHorseDB;
use WorkHorseDB;

create table if not exists category
(
	category_id int auto_increment
		primary key,
	name varchar(30) null,
	description varchar(140) null
);

create table if not exists event
(
	event_id int auto_increment
		primary key,
	name varchar(30) null,
	category_id int null,
	start_time date null,
	end_time date null,
	description varchar(140) null,
	location varchar(140) null,
	latitude decimal(9,6) default 42.434718 not null,
	longitude decimal(9,6) default -84.002509 not null,
	is_required tinyint default 0 not null,
	constraint event_ibfk_1
		foreign key (category_id) references category (category_id)
);

create index category_id
	on event (category_id);

create table if not exists event_category
(
	event_id int not null,
	category_id int not null,
	primary key (category_id, event_id),
	constraint event_category_ibfk_1
		foreign key (event_id) references event (event_id),
	constraint event_category_ibfk_2
		foreign key (category_id) references category (category_id)
);

create index event_id
	on event_category (event_id);

create table if not exists job_role
(
	job_role_id int auto_increment
		primary key,
	name varchar(30) not null,
	description varchar(140) null,
	department_name varchar(30) null
);

create table if not exists org_group
(
	org_group_id int auto_increment
		primary key,
	group_name varchar(40) null
);

create table if not exists user_role
(
	user_role_id int auto_increment
		primary key,
	name varchar(30) not null,
	description varchar(140) not null
);

create table if not exists employee
(
	employee_id int auto_increment
		primary key,
	first_name varchar(50) null,
	last_name varchar(50) null,
	user_role_id int not null,
	job_role_id int not null,
	email varchar(320) null,
	password varchar(20) null,
	emergency_contact_name varchar(100) null,
	emergency_contact_number char(10) null,
	address varchar(500) null,
	hire_date date null,
	termination_date date null,
	hours_of_pto tinyint null,
	SSN char(9) null,
	manager_id int null,
	is_good tinyint default 0 not null,
	image_url varchar(2083) null,
	is_hr tinyint default 0 not null,
	is_admin tinyint default 0 not null,
	home_phone char(10) default 'unknown' null,
	mobile_phone char(10) default 'unknown' null,
	constraint employee_ibfk_1
		foreign key (job_role_id) references job_role (job_role_id),
	constraint employee_ibfk_2
		foreign key (user_role_id) references user_role (user_role_id)
);

create table if not exists Contact
(
	contact_id int auto_increment
		primary key,
	employee_id int not null,
	type varchar(10) null,
	number char(10) null,
	constraint Contact_ibfk_1
		foreign key (employee_id) references employee (employee_id)
);

create index employee_id
	on Contact (employee_id);

create index job_role_id
	on employee (job_role_id);

create index user_role_id
	on employee (user_role_id);

create table if not exists employee_of_week
(
	employee_of_week_id int auto_increment
		primary key,
	employee_id int not null,
	week_of_date date not null,
	description varchar(500) null,
	constraint employee_of_week_ibfk_1
		foreign key (employee_id) references employee (employee_id)
);

create index employee_id
	on employee_of_week (employee_id);

create table if not exists employee_org_group
(
	employee_id int not null,
	org_group int not null,
	primary key (employee_id, org_group),
	constraint employee_org_group_ibfk_1
		foreign key (employee_id) references employee (employee_id),
	constraint employee_org_group_ibfk_2
		foreign key (org_group) references org_group (org_group_id)
);

create index org_group
	on employee_org_group (org_group);

create table if not exists event_employee_attending
(
	employee_id int not null,
	event_id int not null,
	primary key (employee_id, event_id),
	constraint event_employee_attending_ibfk_1
		foreign key (employee_id) references employee (employee_id),
	constraint event_employee_attending_ibfk_2
		foreign key (event_id) references event (event_id)
);

create index event_id
	on event_employee_attending (event_id);

create table if not exists event_employee_invited
(
	employee_id int not null,
	event_id int not null,
	primary key (employee_id, event_id),
	constraint event_employee_invited_ibfk_1
		foreign key (employee_id) references employee (employee_id),
	constraint event_employee_invited_ibfk_2
		foreign key (event_id) references event (event_id)
);

create index event_id
	on event_employee_invited (event_id);

