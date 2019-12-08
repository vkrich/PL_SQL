select t0.cnt as total, t1.cnt as "1980" , t2.cnt as "1981", t3.cnt as "1982" , t4.cnt as "1983"
 from
(select count(*) cnt from EMP ) t0,
(select count(*) cnt from EMP where to_char(hiredate,'YYYY') = 1980) t1,
(select count(*) cnt from EMP where to_char(hiredate,'YYYY') = 1981) t2,
(select count(*) cnt from EMP where to_char(hiredate,'YYYY') = 1982) t3,
(select count(*) cnt from EMP where to_char(hiredate,'YYYY') = 1983) t4;
