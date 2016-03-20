-- Table: dbo.dish_transactions

-- DROP TABLE dbo.dish_transactions;

CREATE TABLE dbo.dish_transactions
(
  dish_transaction_id serial NOT NULL,
  user_id int NOT NULL REFERENCES dbo.users (user_id),
  vendor_id int NOT NULL REFERENCES dbo.vendors (vendor_id),
  drop_off_location_id int DEFAULT NULL REFERENCES dbo.drop_off_locations (drop_off_location_id),
  check_in_date DATE DEFAULT NULL,
  check_out_date DATE DEFAULT NULL,
  CONSTRAINT dish_transactions_pkey PRIMARY KEY (dish_transaction_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE dbo.dish_transactions
  OWNER TO postgres;
