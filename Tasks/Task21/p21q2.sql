update emp
set stars = ' ';

commit;

declare 
v_sal emp.sal%TYPE:=0;
v_sal_c emp.sal%TYPE:=0;
v_stars emp.stars%TYPE :=' ';
v_cur_id emp.emp_id%TYPE:=1;

cursor c1 is
       select sal, emp_id 
       from emp;
              
begin 
         open c1;    
       loop           
              fetch c1 into v_sal, v_cur_id;
              exit when c1%notfound;
                                 
              v_sal_c:= ROUND(v_sal,-2); 
                         
              while v_sal_c>0 loop                                       
                update emp
                set stars=concat(stars,'*')
                where sal=v_sal and emp_id=v_cur_id;                     
                v_sal_c := v_sal_c-100;          
              end loop;    
                       
             commit;    
                         
       end loop;
       close c1;
end;
/
select * from emp;
