--1)	Создать таблицу employees

create table employees(
id serial primary key,
employee_name varchar(50) not null
);

--2)	Наполнить таблицу employee 70 строками.

insert into employees (employee_name)
values ('Rodrigo'),
      ('Elisha'),
      ('Tanner'),
      ('Antwan'),
      ('Brielle'),
      ('Janessa'),
      ('Kaylah'),
      ('Joseph'),
      ('Hernandez'),
      ('Maximillian'),
      ('Deleon'),
      ('Phoenix'),
      ('Ellis'),
      ('Kaya'),
      ('Marks'),
      ('Tanya'),
      ('Annabel'),
      ('Byrne'),
      ('Whitney'),
      ('Chavez'),
      ('Kasey'),
      ('Barron'),
      ('Jemima'),
      ('Richmond'),
      ('Caspar'),
      ('Fernandez'),
      ('Anoushka'),
      ('Keith'),
      ('Gonzalez'),
      ('Steven'),
      ('Torres'),
      ('Farhan'),
      ('Doris'),
      ('Subhaan'),
      ('Jensen'),
      ('Carlson'),
      ('Brian'),
      ('Cabrera'),
      ('Saskia'),
      ('Finch'),
      ('Coral'),
      ('Buck'),
      ('Patricia'),
      ('Adil'),
      ('Mason'),
      ('Eva'),
      ('Palmer'),
      ('Lowri'),
      ('Farrah'),
      ('Felix'),
      ('Samantha'),
      ('Cassie'),
      ('Tahlia'),
      ('Rogers'),
      ('Zak'),
      ('May'),
      ('Dora'),
      ('Ethel'),
      ('Gertrude'),
      ('Hayes'),
      ('Bernard'),
      ('Tanner'),
      ('Jose'),
      ('Donnelly'),
      ('Asiya'),
      ('Bryony'),
      ('Aneesa'),
      ('Derek'),
      ('Iona'),
      ('Shanice');
--3)	Создать таблицу salary   

create table salary (
id serial primary key,
monthly_salary int not null
);  

--4)	Наполнить таблицу salary 16 строками:

insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
      
--5)	Создать таблицу employee_salary

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null);	

--6)	Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
values (3,7),
       (1,4),
       (2,1),
	   (4,3),
	   (5,2),
	   (6,5),
	   (7,6),
	   (8,7),
	   (9,8),
	   (10,9),
	   (11,10),
	   (12,11),
	   (13,13),
	   (14,12),
	   (15,14),
	   (16,16),
	   (17,15),
	   (18,11),
	   (19,15),
	   (20,9),
	   (21,10),
	   (22,1),
	   (23,2),
	   (24,3),
	   (25,4),
	   (26,5),
	   (27,8),
	   (28,7),
	   (29,6),
	   (30,12),
       (80,9),
       (81,10),
       (82,11),
       (83,12),
       (84,13),
       (85,14),
       (86,15),
       (87,1),
       (88,15),
       (89,4);
 
--7)	Создать таблицу roles
      
create table roles(
	id serial primary key,
	role_name int not null unique);  

--8)	Поменять тип столба role_name с int на varchar(30)

alter table roles 
alter column role_name type varchar(30);

--9)	Наполнить таблицу roles 20 строками

insert into roles (role_name)
	values ('Junior Python developer'),
		   ('Middle Python developer'),
           ('Senior Python developer'),
           ('Junior Java developer'),
           ('Middle Java developer'),
           ('Senior Java developer'),
           ('Junior JavaScript developer'),
           ('Middle JavaScript developer'),
           ('Senior JavaScript developer'),
           ('Junior Manual QA engineer'),
           ('Middle Manual QA engineer'),
           ('Senior Manual QA engineer'),
           ('Project Manager'),
           ('Designer'),
           ('HR'),
           ('CEO'),
           ('Sales manager'),
           ('Junior Automation QA engineer'),
           ('Middle Automation QA engineer'),
           ('Senior Automation QA engineer');
          
--10)	Создать таблицу roles_employee
          
create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null
);

--11)	Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id )
values (7, 2),
	   (64, 4),
	   (3, 9),
	   (5, 13),
	   (23, 4),
	   (11, 2),
	   (10, 9),
	   (22, 13),
	   (21, 3),
	   (34, 4),
	   (6, 7),
	   (70, 12),
	   (55, 9),
	   (43, 19),
	   (32, 20),
	   (17, 18),
	   (38, 2),
	   (67, 13),
	   (53, 17),
	   (35, 16),
	   (33, 11),
	   (28, 8),
	   (62, 15),
	   (51, 7),
       (19, 1),
       (61, 5),
       (44, 8),
       (46, 19),
       (41, 2),
       (42, 13),
       (45, 17),
       (47, 12),
       (48, 11),
       (49, 4),
       (50, 10),
       (52, 16),
       (57, 1),
       (54, 3),
       (56, 7),
       (66, 9);   

      select*from roles_employee re ;
      
      select*from employee_salary es 