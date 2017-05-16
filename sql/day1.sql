SHOW DATABASES ;
CREATE DATABASE db_1702;
DROP DATABASE db_1702;
USE db_1702;
SHOW TABLES ;
CREATE TABLE t_student(
  sno VARCHAR(10),
  sname VARCHAR(10),
  gender CHAR(1),
  age int(2)
);

  SELECT *
  FROM t_student;

  INSERT INTO t_student
  VALUES ('2017001','张三','男',18);

desc t_student
