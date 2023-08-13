create database emp_rep_db;
use emp_rep_db;

    #TABLE1
    
select * from hr_data;

 #checking Null values
select * from hr_data where EmplyeeName is null;

 #Rename column name
alter table hr_data
rename column EmplyeeName to `Employee Name`;

alter table hr_data 
rename column `Retreanchment Status` to `Retrenchment Status`;

select * from hr_data;

 #Data cleansing
update hr_data
set `Retrenchment Status` = "On Service"
where `Retrenchment Status` = "On services";

update hr_data
set `Retrenchment Status` = "Will be Retrenched"
where `Retrenchment Status` = "Will be retreanched";

    #TABLE 2
    
select * from emp_details;

 #Checking null values
select `Emplyee name` from emp_details
where `Emplyee name` is null;
 
 #Rename colum name
alter table Emp_details
rename column `Emplyee name` to `Employee Name`;

alter table emp_details
rename column `EmployeeNumber` to `Employee Number`;

select * from emp_details;
