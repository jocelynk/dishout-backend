-- Table: dbo.levels

-- DROP TABLE dbo.levels;
CREATE TABLE dbo.levels
(
  level_id serial NOT NULL,
  level_no int,
  level_name varchar(255) DEFAULT NULL,
  points_to_next_level int,
  prize varchar(255) DEFAULT NULL,
   
  CONSTRAINT levels_pkey PRIMARY KEY (level_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE dbo.levels
  OWNER TO postgres;
