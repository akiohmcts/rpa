CREATE SCHEMA IF NOT EXISTS dbrefdata;

CREATE TABLE organisation
(
  ID              UUID,
  NAME            VARCHAR(255) NOT NULL,
  LAST_UPDATED    TIMESTAMP default current_timestamp,
  STATUS          VARCHAR(20) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE professional_user
(
  ID              UUID,
  FIRST_NAME      VARCHAR(255) NOT NULL,
  LAST_NAME       VARCHAR(255) NOT NULL,
  EMAIL_ADDRESS   VARCHAR(255) NOT NULL,
  STATUS          VARCHAR(20) NOT NULL,
  ORGANISATION_ID UUID NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ORGANISATION_ID) REFERENCES organisation (id)
);
