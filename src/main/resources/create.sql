drop table if exists users;

CREATE TABLE IF NOT EXISTS users (id INTEGER NOT NULL AUTO_INCREMENT,firstName VARCHAR(64),lastName VARCHAR(64),birthday INT NOT NULL,login VARCHAR(64),password VARCHAR(64),aboutYou VARCHAR(64),address VARCHAR(64),PRIMARY KEY (id));
