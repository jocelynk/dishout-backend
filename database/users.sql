﻿-- Table: dbo.users

-- DROP TABLE dbo.users;
CREATE TABLE dbo.users
(
  user_id serial NOT NULL,
  email varchar(255) NOT NULL,
  -- salt varchar(255) NOT NULL,
  -- hash varchar(255) NOT NULL,
  username varchar(255) NOT NULL,
  -- phone_number varchar(255) NOT NULL,
  level_id int NOT NULL DEFAULT 1 REFERENCES dbo.levels(level_id),
  userpoints int NOT NULL DEFAULT 0,
  cur_transaction int DEFAULT NULL,
  CONSTRAINT users_pkey PRIMARY KEY (user_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE dbo.users
  OWNER TO postgres;
