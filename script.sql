CREATE TABLE STUDENT(
    id int(11) NOT NULL AUTO_INCREMENT,
    student_name VARCHAR(60) NOT NULL,
    course_title VARCHAR(60) NOT NULL,
    phone_number VARCHAR(60) NOT NULL,
    email_address VARCHAR(60) NOT NULL,
    course_fees DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE users (
  username varchar(50) NOT NULL,
  password varchar(50) NOT NULL,
  enabled tinyint(1) NOT NULL,
  PRIMARY KEY (username)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO users VALUES ('AhmedCamara','{noop}test123',1);
INSERT INTO users VALUES ('IdrissCamara','{noop}test123',1);

CREATE TABLE authorities (
  username varchar(50) NOT NULL,
  authority varchar(50) NOT NULL,
  UNIQUE KEY authorities_idx_1 (username,authority),
  CONSTRAINT authorities_ibfk_1 FOREIGN KEY (username) REFERENCES users (username)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO authorities VALUES ('AhmedCamara','ROLE_ADMIN');
INSERT INTO authorities VALUES ('IdrissCamara','ROLE_EMPLOYEE');