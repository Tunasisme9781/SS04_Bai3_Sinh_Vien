create table students (
                          id serial primary key,
                          full_name varchar(100),
                          gender varchar(10),
                          birth_year int,
                          major varchar(50),
                          gpa decimal(3,1)
);
insert into students(full_name, gender, birth_year, major, gpa) values
                                                                    ('Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
                                                                    ('Trần Thị Bích Ngọc', 'Nữ', 2001, 'Kinh tế', 3.2),
                                                                    ('Lê Quốc Cường', 'Nam', 2003, 'CNTT', 2.7),
                                                                    ('Phạm Minh Anh', 'Nữ', 2000, 'Luật', 3.9),
                                                                    ('Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
                                                                    ('Lưu Đức Tài', 'Nam', 2004, 'Cơ khí', null),
                                                                    ('Võ Thị Thu Hằng', 'Nữ', 2001, 'CNTT', 3.0);
--1a
insert into students(full_name, gender, birth_year, major, gpa) values
    ('Phan Hoàng Nam', 'Nam', 2003, 'CNTT', 3.8);

--2a
update students set gpa = 3.4 where full_name = 'Lê Quốc Cường';

--3a
delete from students where gpa is null;

--4a
select full_name,major,gpa
from students where major = 'CNTT' and gpa >= 3.0 limit 3;

--5a
select distinct major from students;

--6a
select full_name,major,gpa
from students where major = 'CNTT' order by gpa desc, full_name asc;

--7a
select full_name from students where full_name ilike 'Nguyễn%';

--8a
select full_name,birth_year from students where birth_year between 2001 and 2003;
