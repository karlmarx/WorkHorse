drop database WorkHorseDB;
create database WorkHorseDB;
use WorkHorseDB;

create table user_role
(
    user_role_id int auto_increment
        primary key,
    name         varchar(30)  not null,
    description  varchar(140) not null
);

INSERT INTO WorkHorseDB.user_role (name, description) VALUES ('Admin', 'Has all access privileges');
INSERT INTO WorkHorseDB.user_role (name, description) VALUES ('HR', 'Manages employee data. Has Event Organizer access privileges in addition to adding/modifying employee data');
INSERT INTO WorkHorseDB.user_role (name, description) VALUES ('EO', 'Has User access privileges and is able to add, edit, and delete events');
INSERT INTO WorkHorseDB.user_role (name, description) VALUES ('User', 'Able to view employees, events, and employee of the week data');
create table job_role
(
    job_role_id     int auto_increment
        primary key,
    name            varchar(30)  not null,
    description     varchar(140) null,
    department_name varchar(30)  null
);

INSERT INTO WorkHorseDB.job_role (name, description, department_name) VALUES ('CEO', 'The Chief Executive Officer, the highest-ranking person in the company and is ultimately responsible for making managerial decisions', 'Executive');
INSERT INTO WorkHorseDB.job_role (name, description, department_name) VALUES ('HR Representative', 'Responsible for recruiting, vetting, selecting, hiring,', 'Human Resources');
INSERT INTO WorkHorseDB.job_role (name, description, department_name) VALUES ('Soldier', 'Basic infantry of the WarHorse Army', 'Army');
INSERT INTO WorkHorseDB.job_role (name, description, department_name) VALUES ('Developer', 'Code monkey', 'IT Development');
INSERT INTO WorkHorseDB.job_role (name, description, department_name) VALUES ('Manager', 'manager', '');
create table category
(
    category_id int auto_increment
        primary key,
    name        varchar(30)  null,
    description varchar(140) null
);

INSERT INTO WorkHorseDB.category (name, description) VALUES ('Meeting', 'Professional conference to discuss upcoming business decisions');
INSERT INTO WorkHorseDB.category (name, description) VALUES ('Team Building', 'Exercises in teamwork, motivation, and companionship');
INSERT INTO WorkHorseDB.category (name, description) VALUES ('Llama Piñata Party', 'Informal parties to celebrate recent efforts or to relieve stress');
create table employee
(
    employee_id              int auto_increment
        primary key,
    first_name               varchar(50)                null,
    last_name                varchar(50)                null,
    user_role_id             int                        not null,
    job_role_id              int                        not null,
    email                    varchar(320)               null,
    password                 varchar(20)                null,
    emergency_contact_name   varchar(100)               null,
    emergency_contact_number char(10)                   null,
    address                  varchar(500)               null,
    hire_date                date                       null,
    termination_date         date                       null,
    hours_of_pto             tinyint                    null,
    SSN                      char(9)                    null,
    manager_id               int                        null,
    is_good                  tinyint  default 0         not null,
    image_url                varchar(2083)              null,
    is_hr                    tinyint  default 0         not null,
    is_admin                 tinyint  default 0         not null,
    home_phone               char(10) default 'unknown' null,
    mobile_phone             char(10) default 'unknown' null,
    constraint employee_ibfk_1
        foreign key (job_role_id) references job_role (job_role_id),
    constraint employee_ibfk_2
        foreign key (user_role_id) references user_role (user_role_id)
);



INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('War', 'Carnage', 1, 1, 'carnage.war@warhorse.com', 'bodycount9353', 'contact name', '-1555', 'address', '1000-01-01', null, 100, 'SSN', 1, 0, null, 0, 0, 'unknown', 'unknown');
INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('Scarlet', 'Schmitt', 2, 2, 'schmitt.scarlet@warhorse.com', 'colorR3d', 'contact name', '-1555', 'address', '2016-03-25', null, 21, 'SSN', 1, 0, null, 0, 0, 'unknown', 'unknown');
INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('Hunter', 'Schuler', 2, 4, 'schuler.hunter@srmsolutions.com', 'pasword123', 'contact name', '-1555', 'address', '2019-10-21', null, 0, 'SSN', 1, 0, null, 0, 0, 'unknown', 'unknown');
INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('Karl', 'Marx', 2, 4, 'marx.karl@srmsolutions.com', 'pasword123', 'contact name', '-1555', 'address', '2019-10-21', null, 0, 'SSN', 1, 0, null, 0, 0, 'unknown', 'unknown');
INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('Eric', 'Riddle', 2, 4, 'riddle.eric@srmsolutions.com', 'pasword123', 'contact name', '-1555', 'address', '2019-10-21', null, 0, 'SSN', 1, 0, null, 0, 0, 'unknown', 'unknown');
INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('Brennen', 'Southworth', 2, 4, 'southworth.brennen@srmsolutions.com', 'pasword123', 'contact name', '-1555', 'address', '2019-10-21', null, 0, 'SSN', 1, 0, null, 0, 0, 'unknown', 'unknown');
INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('Jane', 'Doe', 3, 3, 'doe.jane@warhorse.com', 'deerHunter!', 'contact name', '-1555', 'address', '2004-06-02', null, 60, 'SSN', 2, 0, null, 0, 0, 'unknown', 'unknown');
INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('John', 'Smith', 4, 3, 'smith.john@warhorse.com', '456Secret', 'contact name', '-1555', 'address', '2019-10-03', null, 0, 'SSN', 2, 0, null, 0, 0, 'unknown', 'unknown');
INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('War', 'Carnage', 1, 1, 'carnage.war@warhorse.com', 'bodycount9353', 'contact name', '-1555', 'address', '1000-01-01', null, 100, 'SSN', 1, 0, null, 0, 0, 'unknown', 'unknown');
INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('Scarlet', 'Schmitt', 2, 2, 'schmitt.scarlet@warhorse.com', 'colorR3d', 'contact name', '-1555', 'address', '2016-03-25', null, 21, 'SSN', 1, 0, null, 0, 0, 'unknown', 'unknown');
INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('Hunter', 'Schuler', 2, 4, 'schuler.hunter@srmsolutions.com', 'pasword123', 'contact name', '-1555', 'address', '2019-10-21', null, 0, 'SSN', 1, 0, null, 0, 0, 'unknown', 'unknown');
INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('Karl', 'Marx', 2, 4, 'marx.karl@srmsolutions.com', 'pasword123', 'contact name', '-1555', 'address', '2019-10-21', null, 0, 'SSN', 1, 0, null, 0, 0, 'unknown', 'unknown');
INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('Eric', 'Riddle', 2, 4, 'riddle.eric@srmsolutions.com', 'pasword123', 'contact name', '-1555', 'address', '2019-10-21', null, 0, 'SSN', 1, 0, null, 0, 0, 'unknown', 'unknown');
INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('Brennen', 'Southworth', 2, 4, 'southworth.brennen@srmsolutions.com', 'pasword123', 'contact name', '-1555', 'address', '2019-10-21', null, 0, 'SSN', 1, 0, null, 0, 0, 'unknown', 'unknown');
INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('Jane', 'Doe', 3, 3, 'doe.jane@warhorse.com', 'deerHunter!', 'contact name', '-1555', 'address', '2004-06-02', null, 60, 'SSN', 2, 0, null, 0, 0, 'unknown', 'unknown');
INSERT INTO WorkHorseDB.employee (first_name, last_name, user_role_id, job_role_id, email, password, emergency_contact_name, emergency_contact_number, address, hire_date, termination_date, hours_of_pto, SSN, manager_id, is_good, image_url, is_hr, is_admin, home_phone, mobile_phone) VALUES ('John', 'Smith', 4, 3, 'smith.john@warhorse.com', '456Secret', 'contact name', '-1555', 'address', '2019-10-03', null, 0, 'SSN', 2, 0, null, 0, 0, 'unknown', 'unknown');
create table employee_of_week
(
    employee_of_week_id int auto_increment
        primary key,
    employee_id         int          not null,
    week_of_date        date         not null,
    description         varchar(500) null,
    constraint employee_of_week_ibfk_1
        foreign key (employee_id) references employee (employee_id)
);

create index employee_id
    on employee_of_week (employee_id);

INSERT INTO WorkHorseDB.employee_of_week (employee_id, week_of_date, description) VALUES (1, '2019-10-21', 'Im the best');
INSERT INTO WorkHorseDB.employee_of_week (employee_id, week_of_date, description) VALUES (2, '2019-10-28', 'Still the best');
INSERT INTO WorkHorseDB.employee_of_week (employee_id, week_of_date, description) VALUES (3, '2019-10-14', 'Oops, forgot that I was best');

create table org_group
(
    org_group_id int auto_increment
        primary key,
    group_name   varchar(40) null
);

INSERT INTO WorkHorseDB.org_group (group_name) VALUES ('sales');
INSERT INTO WorkHorseDB.org_group (group_name) VALUES ('marketing');
INSERT INTO WorkHorseDB.org_group (group_name) VALUES ('pr');


create table employee_org_group
(
    employee_id int not null,
    org_group   int not null,
    primary key (employee_id, org_group),
    constraint employee_org_group_ibfk_1
        foreign key (employee_id) references employee (employee_id),
    constraint employee_org_group_ibfk_2
        foreign key (org_group) references org_group (org_group_id)
);



create table event
(
    event_id    int auto_increment
        primary key,
    name        varchar(30)                      null,
    category_id int                              null,
    start_time  date                             null,
    end_time    date                             null,
    description varchar(140)                     null,
    location    varchar(140)                     null,
    latitude    decimal(9, 6) default 42.434718  not null,
    longitude   decimal(9, 6) default -84.002509 not null,
    is_required tinyint       default 0          not null,
    constraint event_ibfk_1
        foreign key (category_id) references category (category_id)
);



INSERT INTO WorkHorseDB.event (name, category_id, start_time, end_time, description, location, latitude, longitude, is_required) VALUES ('adlsfkj', 1, '2019-10-24', '2019-10-24', 'zsdklj', 'asdjfl', 20.000000, 20.000000, 0);
INSERT INTO WorkHorseDB.event (name, category_id, start_time, end_time, description, location, latitude, longitude, is_required) VALUES ('Quarterly Budget Review', 1, '2019-11-20', '2019-11-20', 'no comment', 'Conference Room 103', 0.000000, 0.000000, 0);
INSERT INTO WorkHorseDB.event (name, category_id, start_time, end_time, description, location, latitude, longitude, is_required) VALUES ('Were all in this Together', 2, '2019-10-25', '2019-10-25', 'Lets work together to create a better office space', 'Conference Room 302', 20.000000, 20.000000, 1);
INSERT INTO WorkHorseDB.event (name, category_id, start_time, end_time, description, location, latitude, longitude, is_required) VALUES ('Llama Party!', 3, '2019-10-31', '2019-10-31', 'Relax and enjoy some candy with your coworkers! Be sure to dress up for the holiday!', 'Conference Room 302', 5.000000, 5.000000, 1);
INSERT INTO WorkHorseDB.event (name, category_id, start_time, end_time, description, location, latitude, longitude, is_required) VALUES ('something', 1, '2019-10-16', '2019-10-25', 'asdfjalksj', 'ajfkls', 0.000000, 10.000000, 0);
INSERT INTO WorkHorseDB.event (name, category_id, start_time, end_time, description, location, latitude, longitude, is_required) VALUES ('something', 1, '2019-10-16', '2019-10-25', 'asdfjalksj', 'ajfkls', 0.000000, 10.000000, 0);
create table event_category
(
    event_id    int not null,
    category_id int not null,
    primary key (category_id, event_id),
    constraint event_category_ibfk_1
        foreign key (event_id) references event (event_id),
    constraint event_category_ibfk_2
        foreign key (category_id) references category (category_id)
);



INSERT INTO WorkHorseDB.event_category (event_id, category_id) VALUES (1, 1);
INSERT INTO WorkHorseDB.event_category (event_id, category_id) VALUES (1, 2);
INSERT INTO WorkHorseDB.event_category (event_id, category_id) VALUES (5, 3);
INSERT INTO WorkHorseDB.event_category (event_id, category_id) VALUES (6, 1);
INSERT INTO WorkHorseDB.event_category (event_id, category_id) VALUES (7, 1);
INSERT INTO WorkHorseDB.event_category (event_id, category_id) VALUES (8, 2);
INSERT INTO WorkHorseDB.event_category (event_id, category_id) VALUES (9, 2);
create table event_employee_attending
(
    employee_id int not null,
    event_id    int not null,
    primary key (employee_id, event_id),
    constraint event_employee_attending_ibfk_1
        foreign key (employee_id) references employee (employee_id),
    constraint event_employee_attending_ibfk_2
        foreign key (event_id) references event (event_id)
);



INSERT INTO WorkHorseDB.event_employee_attending (employee_id, event_id) VALUES (41, 1);
INSERT INTO WorkHorseDB.event_employee_attending (employee_id, event_id) VALUES (42, 1);
INSERT INTO WorkHorseDB.event_employee_attending (employee_id, event_id) VALUES (42, 5);
INSERT INTO WorkHorseDB.event_employee_attending (employee_id, event_id) VALUES (47, 5);
INSERT INTO WorkHorseDB.event_employee_attending (employee_id, event_id) VALUES (48, 6);
INSERT INTO WorkHorseDB.event_employee_attending (employee_id, event_id) VALUES (41, 7);
INSERT INTO WorkHorseDB.event_employee_attending (employee_id, event_id) VALUES (42, 7);
INSERT INTO WorkHorseDB.event_employee_attending (employee_id, event_id) VALUES (43, 8);
INSERT INTO WorkHorseDB.event_employee_attending (employee_id, event_id) VALUES (44, 8);
INSERT INTO WorkHorseDB.event_employee_attending (employee_id, event_id) VALUES (45, 9);
INSERT INTO WorkHorseDB.event_employee_attending (employee_id, event_id) VALUES (46, 9);
INSERT INTO WorkHorseDB.event_employee_attending (employee_id, event_id) VALUES (47, 9);
INSERT INTO WorkHorseDB.event_employee_attending (employee_id, event_id) VALUES (48, 9);
create table event_employee_invited
(
    employee_id int not null,
    event_id    int not null,
    primary key (employee_id, event_id),
    constraint event_employee_invited_ibfk_1
        foreign key (employee_id) references employee (employee_id),
    constraint event_employee_invited_ibfk_2
        foreign key (event_id) references event (event_id)
);

create index event_id
    on event_employee_invited (event_id);

INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (41, 1);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (42, 1);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (43, 1);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (42, 5);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (44, 5);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (47, 5);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (48, 6);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (41, 7);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (42, 7);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (43, 7);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (43, 8);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (44, 8);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (44, 9);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (45, 9);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (46, 9);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (47, 9);
INSERT INTO WorkHorseDB.event_employee_invited (employee_id, event_id) VALUES (48, 9);

