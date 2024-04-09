-- db/seed.sql
\c journeejots

INSERT INTO users (username, password_hash, email, created_at, updated_at, country)
VALUES 
('demoUser', '$2b$10$.z68x3792U9LyBwmghfsKexstMO7i0SeNCoDmeJa7bEFPQBnZU3bK', 'demouser@example.com', NOW(), NOW(), 'United States');

INSERT INTO trips(user_id,destination,first_time,start_date,end_date,budget,total_cost,climate)VALUES('1', 'Jamaica',true,'2013-03-23', '2013-03-28', 1500, 800, 'hot'),
('1', 'Mexico',true,'2014-04-23', '2014-04-28', 1500, 300, 'hot'),
('1', 'Dominican Republic',true,'2015-05-23', '2015-05-28', 2000, 500, 'hot')
