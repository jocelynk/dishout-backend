-- Table: dbo.dishes

-- DROP TABLE dbo.dishes;

CREATE TABLE dbo.dishes
(
  dish_id SERIAL NOT NULL,
  dish_number int,
  uses int,
  dish_added date DEFAULT CURRENT_DATE,
  dish_type character varying(255) DEFAULT NULL::character varying,
  CONSTRAINT bowls_pkey PRIMARY KEY (dish_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE dbo.dishes
  OWNER TO postgres;
