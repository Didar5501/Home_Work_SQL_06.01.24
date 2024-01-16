create table companies 
(
    company_id serial primary key,
    company_name varchar(100),
    address varchar(255),
    contact_person varchar(100),
    phone_number varchar(20));





create table projects (
    project_id serial primary key,
    project_name varchar(100),
    start_date date,
    end_date date,
    company_id int references companies(company_id));



create table workers 
(
    worker_id serial primary key,
    first_name varchar(50),
    last_name varchar(50),
    position varchar(50),
    salary decimal(10, 2));




create table workteams (
    team_id serial primary key,
    team_name varchar(100),
    leader_id int references workers(worker_id),
    project_id int references projects(project_id));