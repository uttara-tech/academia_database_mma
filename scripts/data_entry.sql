## This script is used to populate records in below database tables:
# Database name: 'academia'
# Tables: 1.admins, 2.students, 3.teachers, 4.courses, 5.results
# 
# It can be executed from command line/terminal with below command:
# mysql -u [user] -p < /path/to/file/data_entry.sql
# e.g. mysql -u root -p < /Users/mysql/data_entry.sql


# 1. Table: 'admins'

insert into academia.Admins(first_name,last_name,email_id,username)
VALUES
('Garry','Harris','g.harris@randomemail.com','admin'),
('Joyce','Wells','j.wells@randomemail.com','admin');


# 2. Table: 'students'

insert into academia.Students (first_name,last_name,email_id,username)
VALUES
('Kate','Sullivan','k.sullivan@randomemail.com','student'),
('Adison','Harris','a.harris@randomemail.com','student'),
('John','Harris','j.harris@randomemail.com','student'),
('Antony','Spencer','a.spencer@randomemail.com','student'),
('Cadie','Casey','c.casey@randomemail.com','student'),
('Ada','Payne','a.payne@randomemail.com','student'),
('Michael','Gray','m.gray@randomemail.com','student'),
('Evelyn','Morrison','e.morrison@randomemail.com','student'),
('Brad','Thomas','b.thomas@randomemail.com','student'),
('Dale','Phillips','d.phillips@randomemail.com','student'),
('Nicholas','Dixon','n.dixon@randomemail.com','student'),
('Ryan','Cole','r.cole@randomemail.com','student'),
('Rosie','Hill','r.hill@randomemail.com','student'),
('Alen','Higgins','a.higgins@randomemail.com','student'),
('John','Clark','j.clark@randomemail.com','student'),
('Isabella','Walker','i.walker@randomemail.com','student'),
('Tony','Wilson','t.wilson@randomemail.com','student'),
('Adelaide','Robinson','a.robinson@randomemail.com','student'),
('Sam','Alderman','s.alderman@randomemail.com','student'),
('Zoe','Schnitz','z.schnitz@randomemail.com','student');



# 3. Table: 'teachers'

insert into academia.Teachers (first_name,last_name,email_id,username)
VALUES
('Lyndon','Davis','l.davis@randomemail.com','teacher'),
('Kelvin','Nelson','k.nelson@randomemail.com','teacher'),
('Hailey','Mason','h.mason@randomemail.com','teacher'),
('Heather','Hawkins','h.hawkins@randomemail.com','teacher'),
('Ashton','Kelley','a.kelley@randomemail.com','teacher'),
('Thomas','Wilson','t.wilson@randomemail.com','teacher'),
('Darcy','Walker','d.walker@randomemail.com','teacher');



# 4. Table: 'courses'

insert into academia.courses(course_name,availability,teacher_id)
VALUES
('Mathematics','Y',6),
('Physics','Y',2),
('Biology','Y',3),
('History','N',null),
('Literature','Y',4),
('Chemistry','Y',1),
('English','N',null),
('Engineering','Y',7),
('Telecommunication','N',null),
('Software','Y',5);



# 5. Table: 'results'

insert into academia.results (student_id,course_id,result)
VALUES
(1,3,'Pass'),
(2,6,'Pass'),
(3,10,'Pass'),
(4,2,'Pass'),
(5,6,'Fail'),
(6,1,'Pass'),
(7,5,'Pass'),
(8,8,'Pass'),
(9,5,'Pass'),
(10,3,'Fail'),
(11,10,'Pass'),
(12,2,'Pass'),
(13,6,'Pass'),
(14,6,'Pass'),
(15,5,'Pass'),
(16,1,'Pass'),
(17,5,'Fail'),
(18,3,'Pass'),
(19,5,'Pass'),
(20,8,'Pass');
