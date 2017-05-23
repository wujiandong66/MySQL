/*
一个学生选课系统的数据库 db_exam，包含以下库表：
student 学生表
    id
    name
    age
    gender
    dob
    departmentId

department 系别表
    id
    title 系名称
    tel
course 课程表
    id
    title 课程名称
    credit 学分
student_course 选课表
    id
    studentId
    courseid
    grade 考试成绩

使用合理的数据类型、约束和规范的语句创建以上各表（40分）
写出查询各表字段注释、各表名注释的语句 (10分)
为存在关联的表追加合理的外键（10分）
为各表添加 5 条样本数据（10分）
修改选课表 grade 字段，改名为 score（10分）
查询所有姓王的学生（10分）
删除各表，删除数据库（10分）

*/

DROP DATABASE IF EXISTS db_exam ;
CREATE DATABASE db_exam;
DROP TABLE IF EXISTS db_exam.student;
CREATE TABLE db_exam.student (
  id     INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID PK',
  name   VARCHAR(255) NOT NULL
  COMMENT '姓名',
  age    INT UNSIGNED COMMENT '年龄',
  gender CHAR(2) COMMENT '性别',
  dob    DATE COMMENT '出生日期',
  departmentId   INT COMMENT  '系别表'
)COMMENT '考试';

ALTER TABLE db_exam.student
  ADD CONSTRAINT
  fk_student_course_departmentId
FOREIGN KEY (id)
REFERENCES db_exam.department (id); -- 加入系 外键约束

-- 为各表添加 5 条样本数据
INSERT INTO db_exam.student
VALUES (NULL ,'zhangsan',19,'m','1993-01-10',1);
INSERT INTO db_exam.student
VALUES (NULL ,'王二',19,'m','1993-01-21',2);
INSERT INTO db_exam.student
VALUES (NULL ,'lisa',19,'w','1993-01-20',3);
INSERT INTO db_exam.student
VALUES (NULL ,'tom',19,'m','1993-01-10',4);
INSERT INTO db_exam.student
VALUES (NULL ,'tony',19,'m','1993-01-10',5);

SELECT *
FROM db_exam.student;
-- 系别表
DROP TABLE IF EXISTS db_exam.department;
CREATE TABLE db_exam.department (
  id     INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID Pk',
  title  VARCHAR(255) UNIQUE
  COMMENT '系名称',
  tel  VARCHAR(255) COMMENT '手机号'
)COMMENT '系别表';
-- 为各表添加 5 条样本数据
INSERT INTO db_exam.department
VALUES (NULL ,'Front end',13504564545);
INSERT INTO db_exam.department
VALUES (NULL ,'ui',13504564546);
INSERT INTO db_exam.department
VALUES (NULL ,'java',13504564547);
INSERT INTO db_exam.department
VALUES (NULL ,'bigdata',13504564548);
INSERT INTO db_exam.department
VALUES (NULL ,'Art Department',13504564549);

SELECT *
FROM db_exam.department;


-- course 课程表
DROP TABLE IF EXISTS db_exam.course;
CREATE TABLE db_exam.course (
  id     INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID Pk',
  title  VARCHAR(255) UNIQUE
  COMMENT '课名称',
  credit  INT COMMENT '学分'
)COMMENT '课程表';
-- 为各表添加 5 条样本数据
INSERT INTO db_exam.course
VALUES (NULL ,'javascrip',3);
INSERT INTO db_exam.course
VALUES (NULL ,'jq',1);
INSERT INTO db_exam.course
VALUES (NULL ,'html',1);
INSERT INTO db_exam.course
VALUES (NULL ,'javase',5);
INSERT INTO db_exam.course
VALUES (NULL ,'mysql',4);

SELECT *
FROM db_exam.course;



-- 选课表
DROP TABLE IF EXISTS db_exam.student_course;
CREATE TABLE db_exam.student_course (
  id     INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'ID Pk',
  studentId  INT UNIQUE
  COMMENT '学生id',
  courseid  INT COMMENT '课程名称id',
  grade  int comment '考试成绩'
)COMMENT '选课表';
INSERT INTO db_exam.student_course
VALUES (NULL ,1,1,100);
INSERT INTO db_exam.student_course
VALUES (NULL ,2,2,100);

INSERT INTO db_exam.student_course
VALUES (NULL ,3,4,100);
INSERT INTO db_exam.student_course
VALUES (NULL ,4,3,100);
INSERT INTO db_exam.student_course
VALUES (NULL ,5,5,100);


SELECT *
FROM db_exam.student_course;


ALTER TABLE db_exam.student_course
  ADD CONSTRAINT
  fk_student_course_studentId
FOREIGN KEY (Id)
REFERENCES db_exam.student (id);
-- 增加 student_course 外键
ALTER TABLE db_exam.student_course
  ADD CONSTRAINT
  fk_student_course_courseId
FOREIGN KEY (courseid )
REFERENCES db_exam.course (id);

-- 修改选课表 grade 字段，改名为 score
ALTER TABLE db_exam.student_course
  CHANGE grade score INT;
-- 查询所有姓王的学生（10分）
SELECT *
FROM db_exam.student
WHERE  name LIKE '王%';



-- 删除各表，删除数据库（10分）
USE db_exam;
SHOW TABLES;

DROP TABLE db_exam.student_course ;
DROP TABLE db_exam.student ;
DROP TABLE db_exam.department;
DROP TABLE db_exam.course;
