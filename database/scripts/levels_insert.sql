DELETE FROM dbo.levels;
begin transaction;
INSERT INTO dbo.levels(
level_no,
level_name,
points_to_next_level,
prize)
VALUES
(1, 'Seedling', 200, NULL),
(2, 'Seedling', 300, NULL),
(3, 'Seedling', 400, NULL),
(4, 'Seedling', 500, NULL),
(5, 'Bud', 600, NULL),
(6, 'Bud', 700, NULL),
(7, 'Bud',800, NULL),
(8, 'Bud', 900, NULL),
(9, 'Bud', 1000, NULL),
(10, 'Flower', 1500, NULL);
commit;