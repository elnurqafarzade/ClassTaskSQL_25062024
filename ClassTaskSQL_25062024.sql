Create Database SchoolDB
Use SchoolDB
Create Table Groups
(
 Id int identity(1,1) not null Primary key,
 Name nvarchar(50) not null Default 'Student Name',
)
Create Table Teachers
(
Id int identity(1,1) not null Primary Key,
Fullname nvarchar(100) not null default 'Teacher Fullname',
Salary decimal(18,2) not null check(Salary>0),
GroupId int not null Foreign Key references Groups(Id)

)

Create Table Students
(
Id int identity(1,1) not null Primary Key,
Fullname nvarchar(100) not null default 'Teacher Fullname',
Grade decimal(18,2) not null check(Grade>0 and Grade<100),
TeacherId int not null Foreign Key references Teachers(Id)
)

Insert into Groups
values(
'PB201'
)

Insert into Teachers
values(
'Inal Guliyev',560.22,1
)

Insert into Students
values(
'Elcan Shalanov', 88.8,1
)

 SELECT Groups.Id, Teachers.Fullname, s.Fullname, s.Grade
FROM Students AS s
INNER JOIN Teachers ON s.TeacherId=s.Id
Inner join Groups on  Groups.Id=Teachers.GroupId
