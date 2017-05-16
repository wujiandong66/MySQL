DROP DATABASE IF EXISTS db_1702;
CREATE DATABASE db_1702;

DROP TABLE IF EXISTS db_1702.student;
CREATE TABLE db_1702.student (
  id     INT AUTO_INCREMENT PRIMARY KEY -- auto increment 增量\ ['ɪŋkrɪm\(ə\)nt]
  COMMENT 'ID PK', -- id identified
  sno    VARCHAR(10) COMMENT '学号',
  name   VARCHAR(255) COMMENT '姓名', -- 255
  intro  TEXT COMMENT '简介',
  gender CHAR(2) COMMENT '性别',
  age    INT UNSIGNED COMMENT '年龄',
  height DOUBLE(3, 2) COMMENT '身高',
  price  DECIMAL(10, 3) COMMENT '价格', -- 1234.56
  dob    DATE COMMENT '出生日期', -- date of birth
  time   DATETIME COMMENT '时间'
);

INSERT INTO db_1702.student
VALUES (NULL, '20170002', 'Jerry', 'asdf', NULL, NULL, 1.7, 1234567.891, '1999-5-1', '2017-5-1 1:39:01');

SELECT *
FROM db_1702.student;

DELETE FROM db_1702.student
WHERE id = 4 OR id = 5;

DELETE FROM db_1702.student;

TRUNCATE TABLE db_1702.student; -- truncate 清空

SHOW FULL COLUMNS FROM db_1702.student; -- COMMENT 需要这句话 才可以显示 显示完整的列