# README #

## Please follow below steps to setup the database in MySQL Workbench.##

### 1. Create a schema: 'academia' with below command:###
        
        create schema academia;

### 2. Import the 'database_academia.sql' from command line with below command and existing user:###

        mysql -u [user] -p --database=academia < /path/to/file/database_academia.sql
 
        e.g. mysql -u root -p --database=academia < /Users/uni/dumps/database_academia.sql

### 3. Execute script 'create_users.sql' with below command:###

        mysql -u [user] -p < /path/to/file/create_users.sql 

        e.g. mysql -u root -p < /Users/uni/dumps/create_users.sql 
