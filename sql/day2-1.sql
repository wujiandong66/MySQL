DROP DATABASE IF EXISTS db_1702;
CREATE DATABASE db_1702;
# 课程表
DROP TABLE IF EXISTS db_1702.student;
CREATE TABLE db_1702.student (
  week  INT AUTO_INCREMENT PRIMARY KEY -- auto increment 增量\ ['ɪŋkrɪm\(ə\)nt]
  COMMENT 'week PK', -- id identified
  one   VARCHAR(255) COMMENT '第1节',
  two   VARCHAR(255) COMMENT '第2节',
  three VARCHAR(255) COMMENT '第3节',
  four  VARCHAR(255) COMMENT '第4节',
  five  VARCHAR(255) COMMENT '第5节',
  six   VARCHAR(255) COMMENT '第6节',
  seven VARCHAR(255) COMMENT '第7节',
  eight VARCHAR(255) COMMENT '第8节'
);

INSERT INTO db_1702.student
VALUES (NULL,'数学','语文','英语','物理','化学','生物','自习','体育');

SELECT *
FROM db_1702.student;