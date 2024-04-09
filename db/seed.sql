-- db/seed.sql
\c journeejots

INSERT INTO users (username, password_hash, email, created_at, updated_at, country)
VALUES 
('demoUser', '$2b$10$LFcFjUKNCOwsMR9juWZqvOiCFYV5l0BvMCRHvn0.Ovg8X5VPoRaA2', 'demouser@example.com', NOW(), NOW(), 'United States'),
('traveler123', '$2b$10$KQ1l0nS/MtREKsS41JUzWuYVO88QpJut2sDprh.kLz6TRob7kS7zi', 'traveler123@example.com', NOW(), NOW(), 'United Kingdom'),
('adventure_gal', '$2b$10$foA8TPeVOVbG9.bx6E0Re.MHZbPStRiKYmJnpggBDRxuP52sQ3Y1S', 'adventure_gal@example.com', NOW(), NOW(), 'Australia'),
('wanderlust22', '$2b$10$hG0wrDdoYkg9Pp.srTRNzuLRGKevTH/WAwP5bJoF8ndwI.gv29a8W', 'wanderlust22@example.com', NOW(), NOW(), 'Canada');

INSERT INTO trips(user_id,destination,first_time,start_date,end_date,budget,total_cost,climate)VALUES(1, 'Jamaica',true,'2013-03-23', '2013-03-28', 1500, 800, 'hot'),
(1, 'Mexico',true,'2014-04-23', '2014-04-28', 1500, 300, 'hot'),
(1, 'Dominican Republic',true,'2015-05-23', '2015-05-28', 2000, 500, 'hot'),
(2, 'France', false, '2018-07-15', '2018-07-25', 2000, 1800, 'temperate'),
(3, 'Japan', true, '2019-05-10', '2019-05-20', 2500, 2200, 'temperate'),
(3, 'Thailand', false, '2020-03-03', '2020-03-15', 3000, 2800, 'tropical');

INSERT INTO entries (user_id,entry_date,trip_id,location,entry,total_spent)
VALUES
(1, NOW(), 1, 'Montego Bay', 'Enjoyed the beautiful beaches and local cuisine.', 750),
(1, NOW(), 1, 'Ocho Rios', 'Went zip-lining and visited Dunn\"s River Falls.', 300),
(1, NOW(), 2, 'Cancun', 'Relaxed on the beaches and explored Mayan ruins.', 200),
(1, NOW(), 2, 'Playa del Carmen', 'Snorkeling and shopping at the Fifth Avenue.', 100),
(1, NOW(), 3, 'Punta Cana', 'Explored Saona Island and tried local seafood.', 400),
(1, NOW(), 3, 'Santo Domingo', 'Visited historical sites and tried Dominican coffee.', 100),
(2, NOW(), 4, 'Paris', 'Visited the Eiffel Tower and Louvre Museum.', 1200),
(2, NOW(), 4, 'Nice', 'Relaxed on the beaches of the French Riviera.', 500),
(3, NOW(), 5, 'Tokyo', 'Explored Akihabara and Shibuya districts.', 1500),
(3, NOW(), 5, 'Kyoto', 'Visited temples and participated in a tea ceremony.', 700),
(3, NOW(), 6, 'Bangkok', 'Explored temples and enjoyed street food.', 1200),
(3, NOW(), 6, 'Phuket', 'Relaxed on the beaches and went island hopping.', 1000);

