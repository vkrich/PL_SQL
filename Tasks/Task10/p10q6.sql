create table employee2(id number(7), lastname varchar2(50), deptno number(7));
insert into employee2 (id, lastname, deptno) 
                      select empno, ename, deptno from emp;
select * from employee2;                      
