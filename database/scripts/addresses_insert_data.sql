DELETE FROM dbo.addresses;
begin transaction;
INSERT INTO dbo.addresses(
street1,
street2,
street3,
city,
state,
zipcode)
VALUES
('267 W 17th Street', null, null, 'New York', 'NY', '10011'),
('510 Ave of the Americas', null, null, 'New York', 'NY', '10011'),
('75 9th Ave', null, null, 'New York', 'NY', '10011'),
('106 8th Ave #1', null, null, 'New York', 'NY', '10011');

commit;