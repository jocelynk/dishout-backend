-- Table: dbo.addresses

-- DROP TABLE dbo.addresses;

--CREATE DOMAIN zipcode varchar(10) 
--    CONSTRAINT valid_zipcode 
--    CHECK (VALUE ~ '[A-Z0-9-]+');

CREATE DOMAIN us_postal_code AS TEXT
CHECK(
   VALUE ~ '^\d{5}$'
OR VALUE ~ '^\d{5}-\d{4}$'
);

CREATE TABLE dbo.addresses
(
  address_id serial NOT NULL,
  street1 TEXT NOT NULL,
  street2 TEXT,
  street3 TEXT,
  city TEXT NOT NULL,
  state varchar(2) NOT NULL,
  zipcode us_postal_code NOT NULL,
  CONSTRAINT addresses_pkey PRIMARY KEY (address_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE dbo.addresses
  OWNER TO postgres;
