create table departments(
id serial primary key,
departments VARCHAR,
addmission_date date,
total_fees Bigint,
pending_fees Bigint,
departments_id int,
 paid_fees Bigint
);

select*from departments
alter table departments add constraint departments_id PRIMARY KEY(departments_id);

insert into departments(departments,addmission_date,total_fees,pending_fees,departments_id,paid_fees)
values('bca','08-28-2024',40000,25000,1,15000);

insert into departments(departments,addmission_date,total_fees,pending_fees,departments_id,paid_fees)
values('bba','08-28-2024',40000,20000,departments_id,2,20000);

insert into departments(departments,addmission_date,total_fees,pending_fees,departments_id,paid_fees)
values('mca','08-28-2024',40000,10000,3,30000);

insert into departments(departments,addmission_date,total_fees,pending_fees,departments_id,paid_fees)
values('mba','08-28-2024',40000,30000,4,10000);

insert into departments(departments,addmission_date,total_fees,pending_fees,departments_id,paid_fees)
values('bsc','08-28-2024',40000,20000,5,20000);

create table students(
id int primary key,
name4, varchar,
phn_no Bigint,
address varchar,
dob date,
gender varchar,departments_id,
students_5,id int,
FOREIGN key(students_id) REFERENCES departments(id)
);

copy students from 'D:\da18\sql\students.csv' DELIMITER ',' csv header;

select * from students

create table courses(
id serial primary key,
instructor_name varchar,
course_level varchar,
start_date date,
end_date date,
which_year int,
sem int,
departments varchar,
FOREIGN KEY (id)REFERENCES departments(id)
);

insert into courses(instructor_name,course_level,start_date,end_date,which_year,sem,departments)
values ('name1','pg','08-28-2024','08-30-2025',1,5,'bca');

insert into courses(instructor_name,course_level,start_date,end_date,which_year,sem,departments)
values ('name2','ug','08-28-2024','08-30-2025',2,4,'bba');

insert into courses(instructor_name,course_level,start_date,end_date,which_year,sem,departments)
values ('name3','pg','08-28-2024','08-30-2025',3,5,'mca');

insert into courses(instructor_name,course_level,start_date,end_date,which_year,sem,departments)
values ('name4','pg','08-28-2024','08-30-2025',2,2,'mba');

insert into courses(instructor_name,course_level,start_date,end_date,which_year,sem,departments)
values ('name1','ug','08-28-2024','08-30-2025',2,3,'bsc');

create table activities(
id int primary key,
student_name varchar,
which_year int,
participated_in varchar,
gender varchar,
FOREIGN KEY (id) REFERENCES departments(id)
); 

insert into activities(id,student_name,which_year,participated_in,gender)
values(1,'name1',1,'activity1','male');

insert into activities(id,student_name,which_year,participated_in,gender)
values(2,'name2',2,'activity3','female');

insert into activities(id,student_name,which_year,participated_in,gender)
values(3,'name3',3,'activity6','male');

insert into activities(id,student_name,which_year,participated_in,gender)
values(4,'name4',2,'activity4','female');

select * from activities

create table farewell(
id int primary key,
student_name varchar,
entry_fee varchar,
gender varchar,
FOREIGN KEY (id)REFERENCES activities(id)
),

insert into farewell(id,student_name,entry_fee,gender)
values
(1,'name1','cash','male'),
(2,'name2','cash','female'),
(3,'name3','online','male'),
(4,'name4','online','female')



