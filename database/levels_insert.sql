DELETE FROM dbo.levels;
begin transaction;
INSERT INTO dbo.levels(
level_no,
level_name,
level_points,
prize)
VALUES
(1, 'Seedling', 0, NULL),
(2, 'Seedling', 200, NULL),
(3, 'Seedling', 300, NULL),
(4, 'Seedling', 400, NULL),
(5, 'Bud', 500, NULL),
(6, 'Bud', 600, NULL),
(7, 'Bud',700, NULL),
(8, 'Bud', 800, NULL),
(9, 'Bud', 900, NULL),
(10, 'Flower', 1000, NULL);
commit;