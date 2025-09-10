# README #

## Please follow below steps to setup the database in MySQL Workbench. ##

### 1. Create a schema: 'academia' with below command:###
        
        create schema academia;

### 2. Import the 'database_academia.sql' from command line with below command and existing user: ###

        mysql -u [user] -p --database=academia < /path/to/file/database_academia.sql
 
        e.g. mysql -u root -p --database=academia < /Users/uni/dumps/database_academia.sql

### 3. Execute script 'create_users.sql' with below command: ###

        mysql -u [user] -p < /path/to/file/create_users.sql 

        e.g. mysql -u root -p < /Users/uni/dumps/create_users.sql 




## Documents shared: ##

 1) requirement_specification : Lists functional and non-functional requirements.

 2) Mid Module Assignment Report : 500-word report describing the design process

 3) database_academia.sql : Database to be imported

 4) create_users.sql : Script for creating 3 users. Other details in the script.

 5) data_entry.sql : Script that was used for entering records in database tables. Only for reference and not to be executed.
