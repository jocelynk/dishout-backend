-- Table: dbo.inventory

-- DROP TABLE dbo.inventory;

CREATE TABLE dbo.inventory
(
  inventory_id serial NOT NULL,
  vendor_id int NOT NULL REFERENCES dbo.vendors(vendor_id),
  dish_id int NOT NULL REFERENCES dbo.dishes(dish_id),
  quantity int NOT NULL DEFAULT 0,
  CONSTRAINT inventory_pkey PRIMARY KEY (inventory_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE dbo.inventory
  OWNER TO postgres;
