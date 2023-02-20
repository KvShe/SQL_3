create database if not exists homework;
use homework;

drop table if exists staff;

create table if not exists staff
(
    id        int primary key auto_increment,
    firstname varchar(45) not null,
    lastname  varchar(45) not null,
    post      varchar(45) not null,
    seniority int         not null,
    salary    int         not null,
    age       int         not null
);

insert staff (firstname, lastname, post, seniority, salary, age)
values ('Вася', 'Васькин', 'Начальник', 40, 100000, 60),
       ('Петр', 'Власов', 'Начальник', 8, 70000, 30),
       ('Катя', 'Катина', 'Инженер', 2, 70000, 25),
       ('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
       ('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
       ('Петр', 'Петров', 'Рабочий', 20, 55000, 60),
       ('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
       ('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
       ('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
       ('Максим', 'Петров', 'Рабочий', 2, 11000, 19),
       ('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
       ('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);

-- Отсортируйте данные по полю заработная плата (salary) в порядке:
-- убывания
select *
from staff
order by salary;

-- возрастания
select *
from staff
order by salary desc;

-- Выведите 5 максимальных заработных плат (salary)
select salary
from staff
order by salary desc
limit 5;

-- Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
select post,
       sum(salary) as total_salary
from staff
group by post;

-- Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.
select post, count(post) as amount
from staff
where post = 'Рабочий'
  and age between 24 and 49;

-- Найдите количество специальностей
select count(distinct post) as number_of_specialties
from staff;

-- Выведите специальности, у которых средний возраст сотрудников меньше 30 лет
select post, avg(age) as average_age
from staff
group by post
having avg(age) > 30;
