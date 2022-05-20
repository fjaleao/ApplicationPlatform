create sequence tagId
start with 1
increment by 1;

create sequence softwareId
start with 1
increment by 1;

create sequence userId
start with 1
increment by 1;

create sequence transactionId
start with 1
increment by 1;

--Tag (tagId, tagName, tagDescription)
insert into tag values (tagId.nextval, 'Adventure', 'Software description for adventure');
insert into tag values (tagId.nextval, 'Simulation', 'Software description for simulation');
insert into tag values (tagId.nextval, 'Action', 'Software description for action');
insert into tag values (tagId.nextval, 'Horror', 'Software description for herror');



--Publisher (publisherName, foundingYear, country)
insert into publisher values ('2K Games', 2005, 'USA');
insert into publisher values ('Activision', 1979, 'USA');
insert into publisher values ('Atari, SA', 2003, 'France');
insert into publisher values ('Atarti, Inc', 1972, 'USA');
insert into publisher values ('Bandai Namco Entertainment', 2006, 'Japan');
insert into publisher values ('Bethesda Softworks', 1986, 'USA');
insert into publisher values ('Blizzard Entertainment', 1991, 'USA');
insert into publisher values ('Capcom', 1979, 'Japan');
insert into publisher values ('CD Projekt Red', 1994, 'Poland');
insert into publisher values ('Codemasters', 1986, 'UK');
insert into publisher values ('Deep Silver', 1889, 'Germany');
insert into publisher values ('Dovetail Games', 2008, 'UK');
insert into publisher values ('Nintendo', 1889, 'Japan');
insert into publisher values ('Electronic Arts', 1982, 'USA');
insert into publisher values ('Rockstar Games', 1998, 'USA');



--Software (softwareId, softwareName, releaseDate, price, softwareDescription, classification, ageRating, publisherName)
insert into software values (softwareId.nextval, 'The Sims 4', 2014.09.02, 19.99,  'The Sims 4 is a 2014 life simulation video game developed by Maxis and The Sims Studio and published by Electronic Arts. It focuses on its improved character creation and housebuilding tools, as well as deeper in-game simulation with the new emotion and personality systems for Sims.', 
4.5, 12, 'Electronic Arts');
insert into software values (softwareId.nextval, 'The Elder Scrolls Online', 2014.04.04, 19.99,  'The Elder Scrolls Online, abbreviated ESO, is a massively multiplayer online role-playing game (MMORPG) developed by ZeniMax Online Studios and published by Bethesda Softworks. The game is set in the continent of Tamriel and features a storyline indirectly connected with the other games in the Elder Scrolls franchise.', 
4.7, 12, 'Bethesda Softworks');
insert into software values (softwareId.nextval, 'Legend of Zelda: Breath of the Wild', 2017.03.03, 19.99, 'The Legend of Zelda: Breath of the Wild is a 2017 action-adventure game developed and published by Nintendo for the Nintendo Switch and Wii U consoles. The game is an installment of The Legend of Zelda series and is set at the end of its timeline. The player controls an amnesiac Link, who awakens from a hundred-year slumber, and attempts to regain his memories and prevent the destruction of Hyrule by Calamity Ganon.'
4.9, 10, 'Nintendo');
insert into software values (softwareId.nextval, 'Animal Crossing: New Leaf', 2012.11.08, 19.99, 'Animal Crossing: New Leaf is a 2012 social simulation video game developed and published by Nintendo for the Nintendo 3DS console. In the game, the human character takes on the role of mayor in a town populated with anthropomorphic animals. While retaining gameplay from older titles, Animal Crossing: New Leaf marks a change in the series, as the player now becomes the mayor of the town. With the help of the townsfolk and a secretary it is now the players job to make the town a better place to live.', 
4.8, 3, 'Nintendo');
insert into software values (softwareId.nextval, 'Animal Crossing: New Horizons', 2020.03.20, 59.99, 'Animal Crossing: New Horizons is a 2020 social simulation game developed and published by Nintendo for the Nintendo Switch; it is the fifth main entry in the Animal Crossing series. In New Horizons, the player controls a character who moves to a deserted island after purchasing a getaway package from Tom Nook, accomplishes assigned tasks, and develops the island as they choose. They can gather and craft items, customize the island, and develop it into a community of anthropomorphic animals.', 
4.9, 3, 'Nintendo');
insert into software values (softwareId.nextval, 'Grand Theft Auto V', 2013.09.17, 34.99, 'Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the seventh main entry in the Grand Theft Auto series, following 2008s Grand Theft Auto IV, and the fifteenth instalment overall. Set within the fictional state of San Andreas, based on Southern California, the single-player story follows three protagonists—retired bank robber Michael De Santa, street gangster Franklin Clinton, and drug dealer and gunrunner Trevor Philips—and their attempts to commit heists while under pressure from a corrupt government agency and powerful criminals. The open world design lets players freely roam San Andreas open countryside and the fictional city of Los Santos, based on Los Angeles.',
4.7, 18, 'Rockstar Games');




--User (userId, email, username, fullName, birthDate, region)
insert into userA values(userId.nextval, 'johnnyboy74@gmail.com', 'johnnyboy74', 'John Cooper Smith', 2004.01.02, 'North America');
insert into userA values(userId.nextval, 'hellokitty6@gmail.com', 'hellokitty6', 'Andreia Alves', 1995.10.23, 'Western Europe');
insert into userA values(userId.nextval, 'micwarriorxd@gmail.com', 'micwarriorXD', 'Miguel Francisco Rodrigues', 2006.07.15, 'South America');
insert into userA values(userId.nextval, '1beastfigther1@gmail.com', '1beastfigther1', 'Rajesh Koothrappali', 1980.03.30, 'Central Asia');
insert into userA values(userId.nextval, 'youssefthebest99@gmail.com', 'youssefthebest99', 'Youssef Alami', 1978.05.09, 'North Africa');
insert into userA values(userId.nextval, 'davher909@gmail.com', 'davher909', 'David Hernández', 2002.07.26, 'Central America');
insert into userA values(userId.nextval, 'dmitrikillall@gmail.com', 'dmitrikillall', 'Dmitri Smirnov', 1992.12.01, 'Eastern Europe');
insert into userA values(userId.nextval, 'keyboardninja420@gmail.com', 'keyboardninja420', 'Zhang Wei', 2000.01.13, 'East Asia');
insert into userA values(userId.nextval, 'gilmariogamer33@gmail.com', 'gilmariogamer33', 'Gilmario Cossa', 1972.09.19, 'South Africa');
insert into userA values(userId.nextval, 'theaussietrain@gmail.com', 'theaussietrain', 'Charlotte Wilson', 2008.08.05, 'Oceania');
insert into userA values(userId.nextval, 'mualitheog@gmail.com', 'mualitheog', 'Muhammad Ali', 1962.11.25, 'Middle East');


--Transaction (transactionId, transactionDate, paymentType, recipientId, userId)
insert into transactionA values (transactionId.nextval, 2022.05.19, 'PayPal', 2, 2);
insert into transactionA values (transactionId.nextval, 2022.04.03, 'MBWay', 1, 4);


--Owns (userId, softwareId)
insert into owns values (2, 2);
insert into owns values (4, 3);

--Review (userId, softwareId, reviewDescription, stars, reviewDate)
insert into review values (1, 3, 'Very good game! :)', 4.5, 2022.04.05);

--Has (transactionId, softwareId)
insert into has values (1, 2);
insert into has values(2, 3);



--Friendship (friend1, friend2) ***userId***
insert into friendship values (1, 2);



--Defined (softwareId, tagId)
insert into defined values (1, 2);

--test commit