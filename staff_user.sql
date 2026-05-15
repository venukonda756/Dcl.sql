use company_db;

# 6. Try insert(Before permission)
insert into employees
values (3,'kiran',35000);

# 8. G insert after permission (after giving insert permission from company_db.employees)
insert into employees values
(3,'kiran',35000);

