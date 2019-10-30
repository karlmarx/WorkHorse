DROP DATABASE IF EXISTS WorkHorseDB;
CREATE DATABASE WorkHorseDB;
USE WorkHorseDB;

create table user_role
(
    user_role_id int primary key auto_increment,
    name         varchar(30)  not null,
    description  varchar(140) not null
);

create table job_role
(
    job_role_id     int primary key auto_increment,
    name            varchar(30) not null,
    description     varchar(140),
    department_name varchar(30)
);

create table category
(
    category_id int primary key auto_increment,
    name        varchar(30),
    description varchar(140)
);

create table event
(
    event_id    int primary key auto_increment,
    name        varchar(30),
    category_id int,
    foreign key (category_id)
        references category (category_id),
    start_time  datetime,
    end_time    datetime,
    description varchar(140),
    location    varchar(140),
    latitude    decimal(9, 6) not null default 42.434718,
    longitude   decimal(9, 6) not null default -84.002509,
    is_required TINYINT       not null default 0
);

create table event_category
(
    event_id    int not null,
    foreign key (event_id)
        references event (event_id),
    category_id int not null,
    PRIMARY KEY pk_Event_Attendee (category_id, event_id),
    foreign key (category_id)
        references category (category_id)
);

CREATE TABLE employee
(
    employee_id              INT PRIMARY KEY AUTO_INCREMENT,
    first_name               VARCHAR(50),
    last_name                VARCHAR(50),
    user_role_id             INT         NOT NULL,
    job_role_id              INT         NOT NULL,
    email                    VARCHAR(320),
    password                 VARCHAR(20),
    emergency_contact_name   VARCHAR(100),
    emergency_contact_number CHAR(10),
    address                  VARCHAR(500),
    hire_date                DATE,
    termination_date         DATE,
    hours_of_pto             TINYINT,
    SSN                      CHAR(9),
    manager_id               INT,
    is_good                  TINYINT     not null DEFAULT 0,
    image_url                VARCHAR(2083),
    is_hr                    TINYINT     not null DEFAULT 0,
    is_admin                 tinyint     not null default 0,
    FOREIGN KEY (job_role_id)
        REFERENCES job_role (job_role_id),
    FOREIGN KEY (user_role_id)
        REFERENCES user_role (user_role_id)
);

create table event_employee_invited
(
    employee_id int not null,
    foreign key (employee_id)
        references employee (employee_id),
    event_id    int not null,
    PRIMARY KEY  (employee_id, event_id),
    foreign key (event_id)
        references event (event_id)
);
create table event_employee_attending
(
    employee_id int not null,
    foreign key (employee_id)
        references employee (employee_id),
    event_id    int not null,
    PRIMARY KEY  (employee_id, event_id),
    foreign key (event_id)
        references event (event_id)
);


CREATE TABLE employee_of_week
(
    employee_of_week_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id         INT  NOT NULL,
    week_of_date        DATE NOT NULL,
    description         VARCHAR(500),
    FOREIGN KEY (employee_id)
        REFERENCES employee (employee_id)
);

CREATE TABLE Contact
(
    contact_id  INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT NOT NULL,
    type        VARCHAR(10),
    number      CHAR(10),
    FOREIGN KEY (employee_id)
        REFERENCES employee (employee_id)
);
CREATE TABLE org_group
(
    org_group_id int primary key auto_increment,
    group_name   varchar(40)
);
create table employee_org_group
(
    employee_id int not null,
    foreign key (employee_id)
        references employee (employee_id),
    org_group   int not null,
    foreign key (org_group)
        references org_group (org_group_id),
    PRIMARY KEY (employee_id, org_group)
);

insert into category (name, description) values
('Meeting', 'Professional conference to discuss upcoming business decisions'),
('Team Building', 'Exercises in teamwork, motivation, and companionship'),
('Llama Piñata Party', 'Informal parties to celebrate recent efforts or to relieve stress')
;

insert into job_role (name, description, department_name) values
('CEO', 'The Chief Executive Officer, the highest-ranking person in the company and is ultimately responsible for making managerial decisions', 'Executive'),
('HR Representative', 'Responsible for recruiting, vetting, selecting, hiring,', 'Human Resources'),
('Soldier', 'Basic infantry of the WarHorse Army', 'Army'),
('Developer', 'Code monkey', 'IT Development')
('Manager', 'Manager', 'IT Development')
;

insert into user_role (name, description) values
('Admin', 'Has all access privileges'),
('HR', 'Manages employee data. Has Event Organizer access privileges in addition to adding/modifying employee data'),
('EO', 'Has User access privileges and is able to add, edit, and delete events'),
('User', 'Able to view employees, events, and employee of the week data')
;

truncate employee;
insert into employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin) values
('War', 'Carnage', 1, 1, 'carnage.war@warhorse.com', 'bodycount9353', 'contact name', 212-555-1212, 'address', '1000-01-01', null,  100, 'SSN', 1, false, null, false, false),
('Scarlet', 'Schmitt', 2, 2, 'schmitt.scarlet@warhorse.com', 'colorR3d', 'contact name', 212-555-1212, 'address', '2016-03-25', null,  21, 'SSN', 1, false, null, false, false),
('Hunter', 'Schuler', 2, 4, 'schuler.hunter@srmsolutions.com', 'pasword123', 'contact name', 212-555-1212, 'address', '2019-10-21', null, 0, 'SSN', 1, false, null, false, false),
('Karl', 'Marx', 2, 4, 'marx.karl@srmsolutions.com', 'pasword123', 'contact name', 212-555-1212, 'address', '2019-10-21', null,  0, 'SSN', 1, false, null, false, false),
('Eric', 'Riddle', 2, 4, 'riddle.eric@srmsolutions.com', 'pasword123', 'contact name', 212-555-1212, 'address', '2019-10-21', null,  0, 'SSN', 1, false, null, false, false),
('Brennen', 'Southworth', 2, 4, 'southworth.brennen@srmsolutions.com', 'pasword123', 'contact name', 212-555-1212, 'address', '2019-10-21', null, 0, 'SSN', 1, false, null, false, false),
('Jane', 'Doe', 3, 3, 'doe.jane@warhorse.com', 'deerHunter!', 'contact name', 212-555-1212, 'address', '2004-06-02', null,  60, 'SSN', 2, false, null, false, false),
('John', 'Smith', 4, 3, 'smith.john@warhorse.com', '456Secret', 'contact name', 212-555-1212, 'address', '2019-10-03', null,  0, 'SSN', 2, false, null, false, false)
;

insert into event (name, category_id, start_time, end_time, description, location, latitude, longitude, is_required) values
('Quarterly Budget Review', 1, '2019-11-20', '2019-11-20', 'no comment', 'Conference Room 103', 0.0, 0.0, 0),
('Were all in this Together', 2, '2019-10-25', '2019-10-25' , 'Lets work together to create a better office space', 'Conference Room 302', 20.0, 20.0, 1),
('Llama Party!', 3, '2019-10-31', '2019-10-31', 'Relax and enjoy some candy with your coworkers! Be sure to dress up for the holiday!', 'Conference Room 302', 5.0, 5.0, 1)
;

insert into event_employee_attending (employee_id, event_id) values
(41, 1),
(42, 1),
(42, 5),
(47, 5),
(48, 6),
(41, 7),
(42, 7),
(43, 8),
(44, 8),
(45, 9),
(46, 9),
(47, 9),
(48, 9)
;

insert into event_employee_invited (employee_id, event_id) values
(41, 1),
(42, 1),
                                                                  (43,1),
(44, 5),
                                                                  (42,5),
(47, 5),
(48, 6),
(43, 7),
                                                                  (41,7),
(42, 7),
(43, 8),
(44, 8),
                                                                  (44,9),
(45, 9),
(46, 9),
(47, 9),
(48, 9)
;


insert into employee_of_week (employee_id, week_of_date, description) values
(45, '2019-10-21', 'Im the best'),
(45, '2019-10-28', 'Still the best'),
(46, '2019-10-14', 'Oops, forgot that I was best')
;
use WorkHorseDB;
alter table employee
	add home_phone char(10) default 'unknown' null;
alter table employee
	add mobile_phone char(10) default 'unknown' null;