
create table department (id number(7),name varchar2(25));
insert into department (id, name) 
                            select deptno, dname from dept;
select * from department;
commit;

                      
                      
       
