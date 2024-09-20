use db_stud
create table tbl_student(
S_Id int primary key,
S_name varchar(20) null,
GPA float null)

create table tbl_course(
C_Id int primary key,
C_Name varchar(20) null)

Insert into tbl_student values(1,'Ali',3.1)
Insert into tbl_student values(2,'Bilal',3.0)
Insert into tbl_student values(3,'Ahmed',3.2)
Insert into tbl_student values(4,'Amjad',3.3)
Insert into tbl_student values(5,'Fahad',3.0)
Select * from tbl_student
Select * from tbl_course

Insert into tbl_course values(11, 'ICT')
Insert into tbl_course values(22, 'MAD')
Insert into tbl_course values(33, 'CAL')
Insert into tbl_course values(44, 'DB')
Insert into tbl_course values(55, 'Science')

--when 1:M & 1:M from both sides then M:M relation 
--which side has M there is Foreign Key in this case 2 foreign keys 
-- we cant apply foregin keys on creating both table as it wont give reference but we can create seperate table for this

create table tbl_fk(
Co_Id int foreign key references tbl_student(S_Id),
Stu_Id int foreign key references tbl_course(C_Id))
select * from tbl_fk
insert into tbl_fk values(4,22)

-- to not allow same column entrance
alter table tbl_fk
add constraint unique_values
unique(Stu_Id, Co_Id)
--insert into tbl_fk values(4,22)