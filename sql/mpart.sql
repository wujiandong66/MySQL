USE scott;
SELECT *
FROM scott.emp
WHERE DEPTNO=30;

SELECT EMPNO,ENAME,DEPTNO
FROM scott.emp
WHERE JOB='clerk';

SELECT *
FROM scott.emp
WHERE emp.SAL<emp.COMM;


SELECT *
FROM scott.emp
WHERE COMM>emp.SAL*0.3;

SELECT *
FROM scott.emp
WHERE (DEPTNO=10 AND JOB='manager') or(DEPTNO=20 AND JOB='clerk');

SELECT *
FROM scott.emp
WHERE (DEPTNO=10 AND JOB='manager')
 OR(DEPTNO=20 AND JOB='clerk')
 OR( JOB NOT IN ('clerk','manager')AND emp.SAL + ifnull(COMM,0)>3000);

SELECT DISTINCT job
FROM scott.emp
WHERE COMM > 0;

# 8. 找出奖金少于 100 或者没有获得奖金的员工的信息
SELECT *
FROM scott.emp
WHERE COMM < 100 OR COMM IS NULL;