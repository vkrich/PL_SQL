select ename,
decode (comm, NULL, 'No Commission',
                    comm) as "COMM"
from emp
