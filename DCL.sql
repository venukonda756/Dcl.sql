# 1. creating database and table
Create database company_db;
use company_db;

Create table employees( emp_id int primary key,
emp_name varchar (50),
salary Decimal(10,2)
);

# 2.inserting data into employees table
insert into employees values
(1,'venu',50000),
(2,'kumar',40000);

#3.creating user
create user 'staff_user'@'localhost'
identified by 'staff123';

# 4. using grant to give select permission only
Grant select 
on company_db.employees
to 'staff_user'@'localhost';

# 5. verifing permissions 
show grants for 'staff_user'@'localhost';



# 7. Grant insert permission( giving permission to the staff_user )
grant insert 
on company_db.employees
to 'staff_user'@'localhost';

# 9. revoke insert permission(removing insert permission from staff_user)
revoke insert on commpany_db.employees 
from 'staff_user'@'localhost';

#10 Final permission check 
show grants for 'staff_user'@';localhost;

