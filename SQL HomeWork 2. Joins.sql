--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

-- In order to perform this task we need to create connections between the tables:
alter table employee_salary  
	add foreign key (id) 
		references employees(id);

alter table employee_salary 
	add foreign key (salary_id) 
		references salary(id);

select e.id, employee_name , monthly_salary from employees e 
inner join employee_salary  es
on e.id = es.employee_id 
inner join salary s
on s.id = es.salary_id 
where monthly_salary <2000;  --2. Вывести всех работников у которых ЗП меньше 2000

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select salary.monthly_salary, employee_salary.employee_id, e.employee_name from salary 
left join employee_salary
on salary.id = employee_salary.salary_id  
left join employees e 
on e.id = employee_salary.employee_id
where monthly_salary < 2000 and employee_name is null; --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. 

---5. Найти всех работников кому не начислена ЗП.

select e.id, e.employee_name, s.monthly_salary from employees e
left join employee_salary es 
on es.employee_id = e.id 
left join salary s 
on es.salary_id = s.id 
where monthly_salary is null 
order by e.id;

--6. Вывести всех работников с названиями их должности.
alter table roles_employee  
	add foreign key (employee_id)
		references employees(id);			
	
select e.employee_name, r.role_name from employees e
left join roles_employee re  
on re.employee_id  = e.id
left join roles r 
on r.id = re.role_id;

--7. Вывести имена и должность только Java разработчиков.

select e.id, e.employee_name, r.role_name from roles_employee re
join employees e on e.id = re.employee_id 
join roles r 
on r.id=re.role_id 


where r.role_name like '%Java d%';

--8.Вывести имена и должность только Python разработчиков.
select e.id, e.employee_name, r.role_name from roles_employee re
join employees e on e.id = re.employee_id 
join roles r 
on r.id=re.role_id 
where r.role_name like 'Python d%';

--9.Вывести имена и зарплаты Junior Python разработчиков
select e.employee_name, r.role_name, s.monthly_salary  from roles_employee re
left join employees e on e.id = re.employee_id 
left join roles r 
on r.id=re.role_id
left join employee_salary es 
on es.employee_id = e.id 
left join salary s
on s.id = es.salary_id 
where r.role_name like '%Junior Python%'

--10. Вывести имена и зарплаты Middle JS разработчиков

select e.employee_name, r.role_name, s.monthly_salary  from roles_employee re
left join employees e on e.id = re.employee_id 
left join roles r 
on r.id=re.role_id
left join employee_salary es 
on es.employee_id = e.id 
left join salary s
on s.id = es.salary_id 
where r.role_name like '%Middle J%S%'
--Вывести имена и зарплаты Senior Java разработчиков 

select e.employee_name, r.role_name, s.monthly_salary  from roles_employee re
left join employees e on e.id = re.employee_id 
left join roles r 
on r.id=re.role_id
left join employee_salary es 
on es.employee_id = e.id 
left join salary s
on s.id = es.salary_id 
where r.role_name like 'Senior JavaScript d%'

--Вывести зарплаты Junior QA инженеров

select e.employee_name, r.role_name, s.monthly_salary  from roles_employee re
left join employees e on e.id = re.employee_id 
left join roles r on r.id=re.role_id
left join employee_salary es on es.employee_id = e.id 
left join salary s on s.id = es.salary_id 
where r.role_name like 'Junior %QA%'

--Вывести среднюю зарплату всех Junior специалистов
select AVG(monthly_salary) as AVG_salary from roles_employee re
join employees e on e.id = re.employee_id 
join roles r on r.id=re.role_id 
join employee_salary es on e.id=es.employee_id
join salary s on s.id=es.salary_id 
where r.role_name like '%Junior%'
