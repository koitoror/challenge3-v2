DROP DATABASE IF EXISTS diary;
CREATE DATABASE  diary;
\c diary;
DROP TABLE IF EXISTS entries;
CREATE TABLE entries (
  id serial NOT NULL,
  title varchar(35)  NOT NULL default '',
  entry varchar(300) NOT NULL);

INSERT INTO entries (title, entry) VALUES ('Hey', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla nesciunt, dignissimos, repudiandae consequuntur eius quod. Quam delectus, totam distinctio, nam officiis eius sit, maiores modi sunt laboriosam rem dignissimos.');
INSERT INTO entries (title, entry) VALUES ('Hey', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla nesciunt, dignissimos, repudiandae consequuntur eius quod. Quam delectus, totam distinctio, nam officiis eius sit, maiores modi sunt laboriosam rem dignissimos.');
INSERT INTO entries (title, entry) VALUES ('Hey', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla nesciunt, dignissimos, repudiandae consequuntur eius quod. Quam delectus, totam distinctio, nam officiis eius sit, maiores modi sunt laboriosam rem dignissimos.');
INSERT INTO entries (title, entry) VALUES ('Hey', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla nesciunt, dignissimos, repudiandae consequuntur eius quod. Quam delectus, totam distinctio, nam officiis eius sit, maiores modi sunt laboriosam rem dignissimos.');
INSERT INTO entries (title, entry) VALUES ('Hey', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla nesciunt, dignissimos, repudiandae consequuntur eius quod. Quam delectus, totam distinctio, nam officiis eius sit, maiores modi sunt laboriosam rem dignissimos.');
INSERT INTO entries (title, entry) VALUES ('Hey', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla nesciunt, dignissimos, repudiandae consequuntur eius quod. Quam delectus, totam distinctio, nam officiis eius sit, maiores modi sunt laboriosam rem dignissimos.');