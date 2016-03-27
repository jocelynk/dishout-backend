DELETE FROM dbo.vendors;
begin transaction;

INSERT INTO dbo.vendors(
vendor_name,
phone_number,
address_id)
VALUES
('Maru 2', '(646) 486-0066', 1),
('Meatball Obsession', '(212) 260-8646', 2),
('Beyond Sushi', '(212) 929-2889', 3),
('Blue Ginger', '(212) 352-0911', 4);

commit;