-- db/seed.sql
\c journeejots

INSERT INTO users (username, password_hash, email, created_at, updated_at, country)
VALUES 
('demoUser', '$2b$10$LFcFjUKNCOwsMR9juWZqvOiCFYV5l0BvMCRHvn0.Ovg8X5VPoRaA2', 'demouser@example.com', NOW(), NOW(), 'United States');
-- ('traveler123', '$2b$10$KQ1l0nS/MtREKsS41JUzWuYVO88QpJut2sDprh.kLz6TRob7kS7zi', 'traveler123@example.com', NOW(), NOW(), 'United Kingdom'),
-- ('adventure_gal', '$2b$10$foA8TPeVOVbG9.bx6E0Re.MHZbPStRiKYmJnpggBDRxuP52sQ3Y1S', 'adventure_gal@example.com', NOW(), NOW(), 'Australia'),
-- ('wanderlust22', '$2b$10$hG0wrDdoYkg9Pp.srTRNzuLRGKevTH/WAwP5bJoF8ndwI.gv29a8W', 'wanderlust22@example.com', NOW(), NOW(), 'Canada');


INSERT INTO trips(user_id,destination,first_time,start_date,end_date,budget,total_cost,climate)VALUES(1, 'Jamaica',true,'2013-03-23', '2013-03-28', 1500, 800, 'hot'),
(1, 'Mexico',true,'2014-04-23', '2014-04-28', 1500, 300, 'hot'),
(1, 'Dominican Republic',true,'2015-05-23', '2015-05-28', 2000, 500, 'hot'),
(1, 'Morocco', false, '2018-07-15', '2018-07-25', 2000, 1800, 'warm'),
(1, 'El Salvador', true, '2019-05-10', '2019-05-20', 2500, 2200, 'warm'),
(1, 'Guatemala', false, '2020-03-03', '2020-03-15', 3000, 2800, 'tropical');

INSERT INTO entries (user_id,entry_date,trip_id,entry,total_spent)
VALUES
(1, NOW(), 1, 'Enjoyed the beautiful beaches of Montego Bay, with its pristine white sands and crystal-clear waters, while soaking up the warm Caribbean sun. Indulged in the vibrant local cuisine, savoring the flavors of jerk chicken, fresh seafood, and tropical fruits. Explored the lively streets lined with colorful shops and reggae music echoing in the air.', 750),
(1, NOW(), 1, 'Embarked on an exhilarating adventure in Ocho Rios by soaring through the lush jungle canopy on a thrilling zip-lining excursion. Later, journeyed to the iconic Dunn\"s River Falls, where cascading waterfalls provided the perfect backdrop for a refreshing climb amidst the tropical scenery. Ended the day with a delicious meal of Jamaican specialties.', 300),
(1, NOW(), 2, 'Relaxed on the powdery white sands of Cancun\"s renowned beaches, feeling the gentle breeze and listening to the soothing sound of waves crashing against the shore. Delved into the region\"s rich history and culture by exploring ancient Mayan ruins, marveling at the architectural wonders of Chichen Itza and Tulum. Enjoyed exquisite cuisine ranging from traditional Mexican dishes to international fare.', 200),
(1, NOW(), 2, 'Immersed in the vibrant atmosphere of Playa del Carmen, strolling along the bustling Fifth Avenue lined with shops, cafes, and street performers. Ventured into the crystal-clear waters of the Caribbean Sea for an unforgettable snorkeling experience, discovering the colorful marine life thriving beneath the surface. Ended the day with a leisurely shopping spree, picking up souvenirs and local handicrafts.', 100),
(1, NOW(), 3, 'Set off on a tropical adventure in Punta Cana, exploring the pristine beauty of Saona Island with its palm-fringed beaches and turquoise waters. Delighted in a culinary journey through the flavors of the Dominican Republic, sampling fresh seafood delicacies and tropical fruits. Relaxed on the beach, feeling the warm sun on the skin and listening to the rhythmic beats of Caribbean music.', 400),
(1, NOW(), 3, 'Immersed in the rich history and culture of Santo Domingo, wandering through cobblestone streets lined with colonial architecture and historic landmarks. Explored the vibrant markets, savoring the aroma of freshly brewed Dominican coffee and indulging in local treats. Visited iconic sites such as the Cathedral of Santa Maria la Menor and the Alcazar de Colon, gaining insights into the city\"s fascinating past.', 100),
(1, NOW(), 4, 'Embarked on a cultural journey in Casablanca, marveling at the exquisite architecture of the Hassan II Mosque, one of the largest mosques in the world. Savored the flavors of Moroccan cuisine, dining on fresh seafood dishes and aromatic tagines by the picturesque coast. Explored the bustling markets, bargaining for unique souvenirs and handicrafts to commemorate the trip.', 800),
(1, NOW(), 4, 'Stepped back in time in the ancient city of Fez, getting lost in the maze-like streets of the historic Medina, a UNESCO World Heritage Site. Admired the intricate tile work and ornate architecture of madrasas, mosques, and palaces. Immersed in the vibrant atmosphere of the souks, bargaining for spices, textiles, and traditional Moroccan goods.', 600),
(1, NOW(), 6, 'Dive into the rich colonial history of Antigua, exploring its charming cobblestone streets lined with colorful buildings and historic landmarks. Embarked on a fascinating journey through coffee plantations, learning about the cultivation and processing of Guatemala\"s famed beans. Enjoyed panoramic views of the surrounding landscapes from elevated viewpoints.', 900),
(1, NOW(), 6, 'Found tranquility by the shores of Lake Atitlan, one of Guatemala\"s most stunning natural wonders, surrounded by towering volcanoes and lush greenery. Embarked on scenic hikes through the rugged terrain, discovering hidden waterfalls and panoramic vistas. Immersed in the local Mayan culture, visiting indigenous villages and learning about traditional crafts and customs.', 1100),
(1, NOW(), 4, 'Awakened the senses in the vibrant city of Marrakech, wandering through the enchanting Jardin Majorelle with its exotic botanical gardens and striking blue architecture. Got lost in the labyrinthine souks, filled with a kaleidoscope of colors, scents, and sounds. Indulged in the flavors of Moroccan cuisine, sampling aromatic tagines, couscous, and sweet pastries.', 700),
(1, NOW(), 6, 'Immersed in the cultural richness of Guatemala City, exploring its eclectic mix of museums, galleries, and historic sites. Delved into the country\"s indigenous heritage at the Museo Popol Vuh and marveled at contemporary art at the Centro Cultural Miguel Ángel Asturias. Wandered through bustling markets, sampling street food and browsing artisanal crafts.', 800),
(1, NOW(), 5, 'Traced the history of San Salvador through its historic downtown, admiring colonial architecture and iconic landmarks such as the Metropolitan Cathedral and the National Palace. Indulged in the flavors of traditional Salvadoran cuisine, savoring pupusas, tamales, and other local delicacies. Explored vibrant markets, filled with colorful textiles, handicrafts, and fresh produce.', 500),
(1, NOW(), 5, 'Embarked on an adventure to the majestic Santa Ana volcano, hiking through lush forests and volcanic landscapes to reach the summit. Witnessed breathtaking panoramic views from the crater rim, overlooking the surrounding valleys and shimmering Lake Coatepeque. Immersed in nature, encountering diverse flora and fauna along the way.', 700);






