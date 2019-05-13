CREATE TABLE faculty (
  faculty_id BIGINT(20) NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (faculty_id)
);

CREATE TABLE cathedra (
  cathedra_id BIGINT(20) NOT NULL AUTO_INCREMENT,
  faculty_id BIGINT NOT NULL,
  specialty_id BIGINT NOT NULL,
  name VARCHAR(255) DEFAULT NULL,

  PRIMARY KEY (cathedra_id),
  FOREIGN KEY (faculty_id) REFERENCES faculty (faculty_id)
);

CREATE TABLE specialty (
  speciality_id BIGINT(20) NOT NULL AUTO_INCREMENT,
  cathedra_id BIGINT NOT NULL,
  training_period BIGINT NOT NULL,
  name VARCHAR(255) DEFAULT NULL,

  PRIMARY KEY (speciality_id),
  FOREIGN KEY (cathedra_id) REFERENCES cathedra (cathedra_id)
);

CREATE TABLE group_of_students (
  group_id BIGINT(20) NOT NULL AUTO_INCREMENT,
  speciality_id BIGINT NOT NULL,
  group_number BIGINT DEFAULT NULL,

  PRIMARY KEY (group_id),
  FOREIGN KEY (speciality_id) REFERENCES specialty (speciality_id)
);

CREATE TABLE subgroup (
  subgroup_id BIGINT(20) NOT NULL AUTO_INCREMENT,
  group_id BIGINT NOT NULL,

  PRIMARY KEY (subgroup_id),
  FOREIGN KEY (group_id) REFERENCES group_of_students (group_id)
);

CREATE TABLE building (
  building_id BIGINT(20) NOT NULL AUTO_INCREMENT,
  building_number BIGINT NOT NULL,

  PRIMARY KEY (building_id)
);

CREATE TABLE cabinet (
  cabinet_id BIGINT(20) NOT NULL AUTO_INCREMENT,
  building_id BIGINT NOT NULL,
  type VARCHAR(255) DEFAULT NULL,
  number_of_tables BIGINT NOT NULL,

  PRIMARY KEY (cabinet_id),
  FOREIGN KEY (building_id) REFERENCES building(building_id)
);

CREATE TABLE class (
  class_id BIGINT(20) NOT NULL AUTO_INCREMENT,
  cabinet_id BIGINT NOT NULL,
  type VARCHAR(255) DEFAULT NULL,
  time BIGINT(20) NOT NULL,

  PRIMARY KEY (class_id),
  FOREIGN KEY (cabinet_id) REFERENCES cabinet(cabinet_id)
);

CREATE TABLE user (
  user_id BIGINT(20) NOT NULL AUTO_INCREMENT,
  is_blocked TINYINT(1) NOT NULL,
  username VARCHAR(255) DEFAULT NULL,
  first_name VARCHAR(255) DEFAULT NULL,
  second_name VARCHAR(255) DEFAULT NULL,
  patronymic VARCHAR(255) DEFAULT NULL,
  email VARCHAR(255) DEFAULT NULL,
  password VARCHAR(255) DEFAULT NULL,
  role VARCHAR(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (user_id)
 );

