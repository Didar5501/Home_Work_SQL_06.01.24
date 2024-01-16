create table students (
    student_id serial primary key,
    first_name varchar(50),
    last_name varchar(50)
);

create table teachers 
(
  teacher_id serial primary key,
    first_name varchar(50),
    last_name varchar(50));

create table groups 
(
	group_id serial primary key,
    group_name varchar(100),
    teacher_id int references teachers(teacher_id)
);

create table group_students (
    group_student_id serial primary key,
    group_id int references groups(group_id),
    student_id int references students(student_id)
	
);

create table teacher_groups 
(
    teacher_group_id serial primary key,
    teacher_id int references teachers(teacher_id),
    group_id int references groups(group_id));