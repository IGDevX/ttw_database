CREATE TABLE `group` (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
description VARCHAR(255),
color VARCHAR(11)
);

INSERT INTO `group` (id,name, description, color) VALUES
(1,'Summer Getaways', 'Group to plan summer vacations and trips.', 'FFA500'),
(2,'Beach Lovers', 'Find the best beaches and plan trips together.', '00CED1'),
(3,'Adventure Seekers', 'Group for hiking, camping, and adventure sports.', '228B22'),
(4,'City Explorers', 'Explore cities and urban hotspots.', '8B0000'),
(5,'Shared Apartments', 'Find or share apartments in your city.', 'FFD700'),
(6,'Holiday Homes', 'Group for renting or sharing holiday homes.', 'FF6347'),
(7,'Roommates Connect', 'Find compatible roommates for your stay.', '9370DB'),
(8,'Winter Retreats', 'Plan ski trips and cozy winter escapes.', '4682B4'),
(9,'Cultural Trips', 'Group for discovering cultural and historical sites.', 'D2691E'),
(10,'Budget Travelers', 'Tips and groups for traveling on a budget.', '2E8B57');
