-- Table: dbo.vendors

-- DROP TABLE dbo.vendors;

CREATE TABLE dbo.vendors
(
  vendor_id serial NOT NULL,
  vendor_name character varying(255) DEFAULT NULL::character varying,
  phone_number character varying(255) DEFAULT NULL::character varying,
  address_id int NOT NULL REFERENCES dbo.addresses(address_id),
  CONSTRAINT vendors_pkey PRIMARY KEY (vendor_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE dbo.vendors
  OWNER TO postgres;
