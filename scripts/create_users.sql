# This script is used to create 3 users with individual privileges:
# 1) admin
# 2) teacher
# 3) student
#
# Password for all three users is 'password'.
# It can be executed from command line/terminal with below command:
# mysql -u [user] -p < /path/to/file/create_users.sql
# e.g. mysql -u root -p < /Users/mysql/create_users.sql
#
# Please login with each user in MySQL workbench to observe different access rights.


use academia;

create user 'student'@'%' identified by 'password';

GRANT select on availableCourses to 'student'@'%';

create user 'admin'@'%' identified by 'password';

GRANT all privileges on *.* to 'admin'@'%';

create user 'teacher'@'%' identified by 'password';

GRANT select,insert,update on results to 'teacher'@'%';

GRANT select on courses to 'teacher'@'%';

GRANT select on viewresult to 'teacher'@'%';
