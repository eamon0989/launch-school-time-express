CREATE DATABASE launch_school_hours;
\c launch_school_hours

CREATE TABLE courses(
  id IDENTITY PRIMARY KEY,
  course_name varchar(255) UNIQUE NOT NULL,
  track varchar(255) NOT NULL
  CHECK (track in 'JS', 'RB', 'LS')
);

INSERT INTO courses (course_name, track)
VALUES ('JS109', 'JS'),
('JS129', 'JS'),
('JS139', 'JS'),
('JS175', 'JS'),
('JS185', 'JS'),
('JS239', 'JS'),
('RB109', 'RB'),
('RB129', 'RB'),
('RB139', 'RB'),
('RB175', 'RB'),
('RB185', 'RB'),
('JS211', 'RB'),
('JS229', 'RB'),
('RB239', 'RB'),
('RB299', 'RB'),
('LS171', 'LS'),
('LS181', 'LS'),
('LS202', 'LS'),
('LS216', 'LS');

CREATE TABLE course_hours(
  id IDENTITY PRIMARY KEY,
  hours integer NOT NULL,
  course_name varchar(255) NOT NULL references courses (course_name),
  user_name varchar(255)
);

INSERT INTO course_hours (hours, course_name) (190, ), (149), (307), (113), (102), (165), (78);
INSERT INTO course_hours (hours, course_name) (115), (175), (85), (131), (63), (87), (95), (90);
INSERT INTO course_hours (hours, course_name) (55), (80), (155), (69), (60), (36), (50), (58);
INSERT INTO course_hours (hours, course_name) (30), (26), (30), (38), (17), (35), (37), (9);
INSERT INTO course_hours (hours, course_name) (30), (73), (90), (58), (24), (76), (35), (52);
INSERT INTO course_hours (hours, course_name) (83), (49), (48), (58), (25), (27), (51), (51);
INSERT INTO course_hours (hours, course_name) (8), (10), (15), (15), (7), (12), (10), (16)
INSERT INTO course_hours (hours, course_name) (78), (55), (160), (46), (92), (38);
INSERT INTO course_hours (hours, course_name) (75), (66), (60), (105), (52), (89), (77), (73);
INSERT INTO course_hours (hours, course_name) (212), (245), (91), (187), (187), (192), (172), (13);