-- Table: dbo.drop_off_locations

-- DROP TABLE dbo.drop_off_locations;

CREATE TABLE dbo.drop_off_locations
(
  drop_off_location_id serial NOT NULL,
  location_name character varying(255) DEFAULT NULL::character varying,
  location_type character varying(255) DEFAULT NULL::character varying,
  address_id int NOT NULL references dbo.addresses(address_id),
  CONSTRAINT drop_off_locations_pkey PRIMARY KEY (drop_off_location_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE dbo.drop_off_locations
  OWNER TO postgres;
