DELETE FROM dbo.drop_off_locations;
begin transaction;

INSERT INTO dbo.drop_off_locations(
location_name,
location_type,
address_id)
VALUES
('Cornell Tech', 'Corporate', 5),
('CVS', 'Public', 6);
commit;
