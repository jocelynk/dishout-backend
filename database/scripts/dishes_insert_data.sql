DELETE FROM dbo.dishes;
begin transaction;

INSERT INTO dbo.dishes(
dish_number,
dish_type)
VALUES
(1, 'soup'),
(2, 'soup'),
(3, 'sandwich'),
(4, 'sandwich'),
(5, 'sandwich');

commit;