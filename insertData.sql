set define off;

drop table tag cascade constraints;
drop table publisher cascade constraints;
drop table software cascade constraints;
drop table userA cascade constraints;
drop table transactionA cascade constraints;
drop table owns cascade constraints;
drop table review cascade constraints;
drop table has cascade constraints;
drop table friendship cascade constraints;
drop table defined cascade constraints;
drop table expands cascade constraints;
drop table thread cascade constraints;
drop table comments cascade constraints;
commit;


create sequence tagIdN
start with 1
increment by 1;

create sequence softwareIdN
start with 1
increment by 1;

create sequence userIdN
start with 1
increment by 1;

create sequence transactionIdN
start with 1
increment by 1;

--Tag (tagId, tagName, tagDescription)
--ordem alfabetica de nome
insert into tag values (tagIdN.nextval, 'Action', 'An action game is a video game genre that emphasizes physical challenges, including handâ€“eye coordination and reaction-time. The genre includes a large variety of sub-genres, such as fighting games, beat ''em ups, shooter games, and platform games.');
insert into tag values (tagIdN.nextval, 'Adventure', 'An adventure game is a video game in which the player assumes the role of a protagonist in an interactive story driven by exploration and/or puzzle-solving.[1] The genre''s focus on story allows it to draw heavily from other narrative-based media, literature and film, encompassing a wide variety of literary genres.');
insert into tag values (tagIdN.nextval, 'Fighting', 'A fighting game (also known as versus fighting game) is a video game genre that involves combat between two (or more) players. Fighting game combat features mechanics such as blocking, grappling, counter-attacking, and chaining attacks together into "combos".');
insert into tag values (tagIdN.nextval, 'Horror', 'A horror game is a video game genre centered on horror fiction and typically designed to scare the player. Unlike most other video game genres, which are classified by their gameplay, horror games are nearly always based on narrative or visual presentation, and use a variety of gameplay types.');
insert into tag values (tagIdN.nextval, 'Simulation', 'A simulation game attempts to copy various activities from real life in the form of a game for various purposes such as training, analysis, prediction, or simply entertainment. Usually there are no strictly defined goals in the game, with the player instead allowed to control a character or environment freely.');
insert into tag values (tagIdN.nextval, 'RPG', 'A role-playing game is a game in which players assume the roles of characters in a fictional setting. Players take responsibility for acting out these roles within a narrative, either through literal acting or through a process of structured decision-making regarding character development.');
insert into tag values (tagIdN.nextval, 'Racing', 'Racing games are a video game genre in which the player participates in a racing competition. They are distributed along a spectrum between more realistic racing simulations and more fantastical arcade-style racing games.');
insert into tag values (tagIdN.nextval, 'Puzzle', 'Puzzle video games make up a broad genre of video games that emphasize puzzle solving. The types of puzzles can test problem-solving skills, including logic, pattern recognition, sequence solving, spatial recognition, and word completion.');
insert into tag values (tagIdN.nextval, 'Strategy', 'Strategy is a major video game genre that emphasizes thinking and planning over direct instant action in order to achieve victory.[1] Although many types of video games can contain strategic elements, as a genre, strategy games are most commonly defined as those with a primary focus on high-level strategy, logistics and resource management.');
insert into tag values (tagIdN.nextval, 'Sports', 'A sports video game is a video game that simulates the practice of sports. Most sports have been recreated with a game, including team sports, track and field, extreme sports, and combat sports.');
insert into tag values (tagIdN.nextval, 'Compatible with Windows', 'This software is compatible with the Windows operating system.');
insert into tag values (tagIdN.nextval, 'Compatible with Mac OS', 'This software is compatible with the Mac operating system.');
insert into tag values (tagIdN.nextval, 'Compatible with Lunix/Unix', 'This software is compatible with the Lunix and Unix operating systems.');
insert into tag values (tagIdN.nextval, 'RV Compatibility', 'In order to use this software, it is recommended that you have a virtual reality headset. Some examples are Valve Index, HTC Vive, Oculus Rift and Windows Mixed Reality.');
insert into tag values (tagIdN.nextval, 'Controller Compatibility', 'You can use a controller to interact with this software.');
insert into tag values (tagIdN.nextval, 'Single-player', 'This game is strongly or completely focused in a single-player gameplay.');
insert into tag values (tagIdN.nextval, 'Multiplayer', 'This game is strongly or completely focused in a competitive/cooperative gameplay.');


--insert into tag values (tagId.nextval, 'tagName', 'tagDescription');



--Publisher (publisherName, foundingYear, country)
--ordem alfabetica de nome
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
insert into publisher values ('Electronic Arts', 1982, 'USA');
insert into publisher values ('Gameloft', 1999, 'France');
insert into publisher values ('Konami', 1969, 'Japan');
insert into publisher values ('Koch Media', 1994, 'Germany');
insert into publisher values ('Microsoft', 1975, 'USA');
insert into publisher values ('Nintendo', 1889, 'Japan');
insert into publisher values ('PopCap Games', 2000, 'USA');
insert into publisher values ('Rockstar Games', 1998, 'USA');
insert into publisher values ('Rare', 1985, 'UK');
insert into publisher values ('Riot Games', 2006, 'USA');
insert into publisher values ('SCS Software', 1997, 'Czech Republic');
insert into publisher values ('Sega', 1951, 'Japan');
insert into publisher values ('SNK Corporation', 1978, 'Japan');
insert into publisher values ('Sony Interactive Entertainment', 1993, 'USA');
insert into publisher values ('Square Enix', 1975, 'Japan');
insert into publisher values ('Square Enix Europe', 1990, 'UK');
insert into publisher values ('Team17', 1990, 'UK');
insert into publisher values ('Ubisoft', 1986, 'France');
insert into publisher values ('Valve', 1996, 'USA');
insert into publisher values ('Warner Bros. Interactive', 2004, 'USA');
--insert into publisher values ('name', YYYY, 'country');



--Software (softwareId, softwareName, releaseDate, price, softwareDescription, classification, ageRating, publisherName)
--ordem alfabetica de publishers, dlc por baixo do respetivo jogo
insert into software values (softwareIdN.nextval, 'Borderlands Game of the Year', to_date('2009.10.20', 'YYYY.MM.DD'), 29.99, 'Lock, Load, & Face the Madness! Get ready for the mind blowing insanity! Play as one of four trigger-happy mercenaries and take out everything that stands in your way! With its addictive action, frantic first-person shooter combat, massive arsenal of weaponry, RPG elements and four-player co-op*, Borderlands is a breakthrough experience that challenges all the conventions of modern shooters. Borderlands places you in the role of a mercenary on the lawless and desolate planet of Pandora, hell-bent on finding a legendary stockpile of powerful alien technology known as The Vault.', 4.7, 18, '2K Games');
insert into software values (softwareIdN.nextval, 'Borderlands 2', to_date('2012.09.18', 'YYYY.MM.DD'), 29.99, 'A new era of shoot and loot is about to begin. Play as one of four new vault hunters facing off against a massive new world of creatures, psychos and the evil mastermind, Handsome Jack. Make new friends, arm them with a bazillion weapons and fight alongside them in 4 player co-op on a relentless quest for revenge and redemption across the undiscovered and unpredictable living planet.', 4.8, 18, '2K Games');
insert into software values (softwareIdN.nextval, 'Borderlands 2 Season Pass', to_date('2012.09.21', 'YYYY.MM.DD'), 29.99, 'Canâ€™t get enough Borderlands? The Borderlands 2 Season Pass is packed full of adventure, featuring new campaigns, new locations, new enemies and a level cap increase. Fight pirates and discover new treasure alongside Captain Scarlett, become champion in Mr. Torgue''s epic arena, and track down new monsters in Sir Hammerlock''s Big Game Hunt. Unlock more skills and levels with the Ultimate Vault Hunter Upgrade Pack. Buy the season pass and get all four campaign add-ons plus the level cap for the price of three add-on campaigns -- a 33% savings. All Season Pass content will be available by June 2013.', 1.7, 18, '2K Games');
insert into software values (softwareIdN.nextval, 'Borderlands: The Pre-Sequel', to_date('2014.10.14', 'YYYY.MM.DD'), 39.99, 'LAUNCH INTO THE BORDERLANDS UNIVERSE AND SHOOT ''N'' LOOT YOUR WAY THROUGH A BRAND NEW ADVENTURE THAT ROCKETS YOU ONTO PANDORAâ€™S MOON IN BORDERLANDS: THE PRE-SEQUEL!', 4.2, 18, '2K Games');
insert into software values (softwareIdN.nextval, 'Borderlands: The Pre-Sequel Season Pass', to_date(2015.03.24, 'YYYY.MM.DD'), 29.99, 'Extend the lunar mayhem with the Borderlands: The Pre-Sequel Season Pass featuring new characters, challenges, missions, and more.', 3.2, 18, '2K Games');
insert into software values (softwareIdN.nextval, 'Shock Drop Slaughter pit', to_date('2014.12.16', 'YYYY.MM.DD'), 3.99, 'Enter the Shock Drop Slaughter Pit and face off against the toughest Scavs on Pandora''s moon, Elpis! Survive the battle and you''ll be feared and respected by the few left aliveâ€¦ not to mention the experience and gear youll earn!', 1.4, 18, '2K Games');
insert into software values (softwareIdN.nextval, 'Ultimate Vault Hunter Upgrade Pack: The Holodome Onslaught', to_date('2014.12.16', 'YYYY.MM.DD'), 9.99, 'With all new narrative content, this add-on begins as Vault Hunters Axton and Gaige catch up on the story thus far via The Holodome Onslaught, a new challenge arena that lets players fight through wave after wave of exciting enemies and bosses. While the veteran Vault Hunters join the rest of the crew at Crimson Raiders HQ and learn of recent events, players will face off against some of the game''s most memorable badasses to earn awesome, new weapons and gear along with radical new heads and skins!', 1.2, 18, '2K Games');
insert into software values (softwareIdN.nextval, 'Handsome Jack Doppelganger Pack', to_date('2014.11.14', 'YYYY.MM.DD'), 9.99, 'Play as everyone''s favorite maniacal tyrant-in-training ...or at least his body double. With the Handsome Jack Doppelganger Pack, use the power of your good looks and charm to distract your enemies into submission. Or, just cut them down to size with your witty banter. Or just shoot them. That works too.', 4.6, 18, '2K Games');
insert into software values (softwareIdN.nextval, 'Borderlands 3', to_date('2020.03.13', 'YYYY.MM.DD'), 59.99,  'The original shooter-looter returns, packing bazillions of guns and an all-new mayhem-fueled adventure! Blast through new worlds and enemies as one of four brand new Vault Hunters â€“ the ultimate treasure-seeking badasses of the Borderlands, each with deep skill trees, abilities, and customization. Play solo or join with friends to take on insane enemies, score loads of loot and save your home from the most ruthless cult leaders in the galaxy.', 4.2, 18, '2k Games');
insert into software values (softwareIdN.nextval, 'Borderlands 3 Season Pass', to_date('2020.03.13', 'YYYY.MM.DD'), 49.99, 'Continue your Borderlands 3 adventure with the Season Pass!', 3.2, 18, '2K Games');
insert into software values (softwareIdN.nextval, 'Borderlands 3 Season Pass 2', to_date('2020.11.09', 'YYYY.MM.DD'), 29.99, 'Enhance Borderlands 3 with the content add-ons of Season Pass 2, featuring new modes and missions, a fourth skill tree for each Vault Hunter, a raid boss, three Vault Cards, and unique cosmetic outfits!', 1.3, 18, '2K Games');
insert into software values (softwareIdN.nextval, 'Bioshock', to_date('2007.08.21', 'YYYY.MM.DD'), 19.99, 'BioShock is a shooter unlike any you''ve ever played, loaded with weapons and tactics never seen. You''ll have a complete arsenal at your disposal from simple revolvers to grenade launchers and chemical throwers, but you will also be forced to genetically modify your DNA to create an even more deadly weapon: you. Injectable plasmids give you super human powers: blast electrical currents into water to electrocute multiple enemies, or freeze them solid and obliterate them with the swing of a wrench. No encounter ever plays out the same, and no two gamers will play the game the same way.',
4.7, 18, '2K Games');
insert into software values (softwareIdN.nextval, 'Bioshock 2', to_date('2010.02.09', 'YYYY.MM.DD'), 19.99, 'Set approximately 10 years after the events of the original BioShock, the halls of Rapture once again echo with sins of the past. Along the Atlantic coastline, a monster has been snatching little girls and bringing them back to the undersea city of Rapture. Players step into the boots of the most iconic denizen of Rapture, the Big Daddy, as they travel through the decrepit and beautiful fallen city, chasing an unseen foe in search of answers and their own survival.',
4.5, 18, '2K Games');
insert into software values (softwareIdN.nextval, 'The Elder Scrolls Online', to_date('2014.04.04', 'YYYY.MM.DD'), 19.99, 'The Elder Scrolls Online, abbreviated ESO, is a massively multiplayer online role-playing game (MMORPG) developed by ZeniMax Online Studios and published by Bethesda Softworks. The game is set in the continent of Tamriel and features a storyline indirectly connected with the other games in the Elder Scrolls franchise.', 
4.7, 12, 'Bethesda Softworks');
insert into software values (softwareIdN.nextval, 'The Sims 4', to_date('2014.09.02', 'YYYY.MM.DD'), 19.99, 'The Sims 4 is a 2014 life simulation video game developed by Maxis and The Sims Studio and published by Electronic Arts. It focuses on its improved character creation and housebuilding tools, as well as deeper in-game simulation with the new emotion and personality systems for Sims.', 
4.5, 12, 'Electronic Arts');
insert into software values (softwareIdN.nextval, 'Legend of Zelda: Breath of the Wild', to_date('2017.03.03', 'YYYY.MM.DD'), 19.99, 'The Legend of Zelda: Breath of the Wild is a 2017 action-adventure game developed and published by Nintendo for the Nintendo Switch and Wii U consoles. The game is an installment of The Legend of Zelda series and is set at the end of its timeline. The player controls an amnesiac Link, who awakens from a hundred-year slumber, and attempts to regain his memories and prevent the destruction of Hyrule by Calamity Ganon.'
4.9, 10, 'Nintendo');
insert into software values (softwareIdN.nextval, 'Animal Crossing: New Leaf', to_date('2012.11.08', 'YYYY.MM.DD'), 19.99, 'Animal Crossing: New Leaf is a 2012 social simulation video game developed and published by Nintendo for the Nintendo 3DS console. In the game, the human character takes on the role of mayor in a town populated with anthropomorphic animals. While retaining gameplay from older titles, Animal Crossing: New Leaf marks a change in the series, as the player now becomes the mayor of the town. With the help of the townsfolk and a secretary it is now the players job to make the town a better place to live.', 
4.8, 3, 'Nintendo');
insert into software values (softwareIdN.nextval, 'Animal Crossing: New Horizons', to_date('2020.03.20', 'YYYY.MM.DD'), 59.99, 'Animal Crossing: New Horizons is a 2020 social simulation game developed and published by Nintendo for the Nintendo Switch; it is the fifth main entry in the Animal Crossing series. In New Horizons, the player controls a character who moves to a deserted island after purchasing a getaway package from Tom Nook, accomplishes assigned tasks, and develops the island as they choose. They can gather and craft items, customize the island, and develop it into a community of anthropomorphic animals.', 
4.9, 3, 'Nintendo');
insert into software values (softwareIdN.nextval, 'Grand Theft Auto V', to_date('2013.09.17', 'YYYY.MM.DD'), 34.99, 'Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the seventh main entry in the Grand Theft Auto series, following 2008s Grand Theft Auto IV, and the fifteenth instalment overall. Set within the fictional state of San Andreas, based on Southern California, the single-player story follows three protagonists'' retired bank robber Michael De Santa, street gangster Franklin Clinton, and drug dealer and gunrunner Trevor Philips'' and their attempts to commit heists while under pressure from a corrupt government agency and powerful criminals. The open world design lets players freely roam San Andreas open countryside and the fictional city of Los Santos, based on Los Angeles.',
4.7, 18, 'Rockstar Games');
insert into software values (softwareIdN.nextval, 'The Witcher 3: Wild Hunt', to_date('2015.05.19', 'YYYY.MM.DD'), 29.99, 'The Witcher 3: Wild Hunt is an action role-playing video game developed by Polish developer CD Projekt Red, and first published in 2015. It is the sequel to the 2011 game The Witcher 2: Assassins of Kings and the third game in The Witcher video game series, played in an open world with a third-person perspective.',
4.9, 18, 'CD Projekt Red');

select * 
from software;


/*insert into software values (softwareId.nextval, 'name', to_date('YYYY.MM.DD', 'YYYY.MM.DD'), E.C,  'description',
classification, ageRating, 'publisher');        */





--User (userId, email, username, fullName, birthDate, region)
insert into userA values(userIdN.nextval, 'johnnyboy@gmail.com', 'johnnyboy74', 'John Cooper Smith', to_Date('2004.01.02', 'YYYY.MM.DD'), 'North America');
insert into userA values(userIdN.nextval, 'hellokitty@sapo.pt', 'hellokitty6', 'Andreia Alves', to_Date('1995.10.23', 'YYYY.MM.DD'), 'Western Europe');
insert into userA values(userIdN.nextval, 'micwarriorxd@sapo.pt', 'micwarriorXD', 'Miguel Francisco Rodrigues', to_Date('2006.07.15', 'YYYY.MM.DD'), 'South America');
insert into userA values(userIdN.nextval, '1beastfigther@gmail.com', '1beastfigther1', 'Rajesh Koothrappali', to_Date('1980.03.30', 'YYYY.MM.DD'), 'Central Asia');
insert into userA values(userIdN.nextval, 'youssefthebest@gmail.com', 'youssefthebest99', 'Youssef Alami', to_Date('1978.05.09', 'YYYY.MM.DD'), 'North Africa');
insert into userA values(userIdN.nextval, 'davhergamer@gmail.com', 'davher909', 'David HernÃ¡ndez', to_Date('2002.07.26', 'YYYY.MM.DD'), 'Central America');
insert into userA values(userIdN.nextval, 'franciscocunhadasilva@sapo.pt', 'franciscosilva', 'Francisco Cunha da Silva', to_Date('1969.11.20', 'YYYY.MM.DD'), 'Western Europe');
insert into userA values(userIdN.nextval, 'dmitrikillall@sapo.pt', 'dmitrikillall', 'Dmitri Smirnov', to_Date('1992.12.01', 'YYYY.MM.DD'), 'Eastern Europe');
insert into userA values(userIdN.nextval, 'keyboardninja@gmail.com', 'keyboardninja420', 'Zhang Wei', to_Date('2000.01.13', 'YYYY.MM.DD'), 'East Asia');
insert into userA values(userIdN.nextval, 'gilmariogamer@gmail.com', 'gilmariogamer33', 'Gilmario Cossa', to_Date('1972.09.19', 'YYYY.MM.DD'), 'South Africa');
insert into userA values(userIdN.nextval, 'theaussietrain@gmail.com', 'theaussietrain', 'Charlotte Wilson', to_Date('2008.08.05', 'YYYY.MM.DD'), 'Oceania');
insert into userA values(userIdN.nextval, 'mualitheog@gmail.com', 'mualitheog', 'Muhammad Ali', to_Date('1962.11.25', 'YYYY.MM.DD'), 'Middle East');
insert into userA values(userIdN.nextval, 'thegoldgirl@sapo.pt', 'thegoldgirl01', 'Liudmila Julia Holub', to_Date('1984.04.08', 'YYYY.MM.DD'), 'Eastern Europe');
insert into userA values(userIdN.nextval, 'dieubeaofficial@sapo.pt', 'dieu_bea_official', 'DieudonnÃ© BÃ©atrice', to_Date('1979.05.02', 'YYYY.MM.DD'), 'Western Europe');
insert into userA values(userIdN.nextval, 'narutoirl@gmail.com', 'narutoirlgamer', 'Shinju Tatsuya Suzuki', to_Date('1999.10.17', 'YYYY.MM.DD'), 'East Asia');
insert into userA values(userIdN.nextval, 'minecraftislife@gmail.com', 'iloveminecraft3', 'Ntombi Bandile', to_Date('2003.09.18', 'YYYY.MM.DD'), 'South Africa');
insert into userA values(userIdN.nextval, 'oliverpeakyshelby@gmail.com', 'darealpeaky666', 'Oliver Shelby', to_Date('2010.06.01', 'YYYY.MM.DD'), 'Oceania');
insert into userA values(userIdN.nextval, 'anwershahdbusinessg@gmail.com', 'anwerbestfifaplayer', 'Anwer Shahd', to_Date('2005.04.13', 'YYYY.MM.DD'), 'Middle East');
insert into userA values(userIdN.nextval, 'kateberryitb@gmail.com', 'berryinthebush59', 'Kate Bush Perry', to_Date('1993.03.24', 'YYYY.MM.DD'), 'North America');
insert into userA values(userIdN.nextval, 'juangarciaper@sapo.pt', '1garciaelgato1', 'Juan GarcÃ­a Pereira', to_Date('1994.07.03', 'YYYY.MM.DD'), 'Western Europe');
insert into userA values(userIdN.nextval, 'whindthewind@sapo.pt', 'whindthewindbr', 'Whindersson Caetano', to_Date('1990.05.15', 'YYYY.MM.DD'), 'South America');
insert into userA values(userIdN.nextval, 'samirranjit@gmail.com', 'samiruarebreakinthecar', 'Samir Ranjit', to_Date('1975.02.28', 'YYYY.MM.DD'), 'Central Asia');
insert into userA values(userIdN.nextval, 'infamousnileguard@gmail.com', 'akiltheguard001', 'Akil Salah', to_Date('1988.10.09', 'YYYY.MM.DD'), 'North Africa');
insert into userA values(userIdN.nextval, 'dacrazycubancigar@gmail.com', 'cuban7cigar', 'Veronica Benita Fredrick', to_Date('1997.01.16', 'YYYY.MM.DD'), 'Central America');
insert into userA values(userIdN.nextval, 'karentherep@gmail.com', 'karenamerica50', 'Karen Texas', to_Date('1970.07.07', 'YYYY.MM.DD'), 'North America');

--insert into userA values(userId.nextval, 'name@domain.com', 'username', 'fullname', YYYY.MM.DD, 'region');


--Transaction (transactionId, transactionDate, paymentType, recipientId, userId)
insert into transactionA values (transactionIdN.nextval, to_Date('2022.04.19', 'YYYY.MM.DD'), 'PayPal', 2, 2);
insert into transactionA values (transactionIdN.nextval, to_Date('2019.05.23', 'YYYY.MM.DD'), 'MBWay', 1, 4);
insert into transactionA values (transactionIdN.nextval, to_Date('2020.06.07', 'YYYY.MM.DD'), 'MasterCard', 1, 1);
insert into transactionA values (transactionIdN.nextval, to_Date('2020.06.03', 'YYYY.MM.DD'), 'MBWay', 1, 1);
insert into transactionA values (transactionIdN.nextval, to_Date('2020.07.05', 'YYYY.MM.DD'), 'Visa', 4, 8);

insert into transactionA values (transactionIdN.nextval, to_Date('2021.11.25', 'YYYY.MM.DD'), 'MasterCard', 9, 2);
insert into transactionA values (transactionIdN.nextval, to_Date('2020.03.30', 'YYYY.MM.DD'), 'PaySafeCard', 3, 7);
insert into transactionA values (transactionIdN.nextval, to_Date('2022.01.30', 'YYYY.MM.DD'), 'ATM', 2, 3);
insert into transactionA values (transactionIdN.nextval, to_Date('2017.08.15', 'YYYY.MM.DD'), 'PayShop', 4, 5);
--insert into transactionA values (transactionId.nextval, YYYY.MM.DD, 'paymentType', recipientId, userId);

select *
from transactionA;

--Owns (userId, softwareId)
insert into owns values (2, 2);
insert into owns values (1, 3);
insert into owns values (1, 6);
insert into owns values (1, 10);
insert into owns values (4, 9);
insert into owns values (9, 14);
insert into owns values (9, 15);
insert into owns values (9, 16);
insert into owns values (9, 17);
insert into owns values (3, 18);
insert into owns values (2, 17);
insert into owns values (2, 19);
insert into owns values (4, 8);
insert into owns values (4, 19);

--insert into owns values (userId, softwareId);

--Review (userId, softwareId, reviewDescription, stars, reviewDate)
insert into review values (1, 3, 'Very good game! :)', 4.5, to_date('2022.04.05', 'YYYY.MM.DD'));
--insert into review values (userId, softwareId, 'reviewDescription', stars, YYYY.MM.DD);

--Has (transactionId, softwareId)
insert into has values(1, 2);
insert into has values(2, 3);
insert into has values(3, 6);
insert into has values(4, 10);
insert into has values(5, 9);
insert into has values(6, 14);
insert into has values(6, 15);
insert into has values(6, 16);
insert into has values(6, 17);
insert into has values(7, 18);
insert into has values(8, 19);
insert into has values(8, 18);
insert into has values(9, 8);
insert into has values(9, 19);


--insert into has values (transactionId, softwareId);



--Friendship (friend1, friend2) ***userId***
insert into friendship values (1, 2);
insert into friendship values (1, 4);
insert into friendship values (1, 7);
insert into friendship values (2, 3);
insert into friendship values (2, 7);
insert into friendship values (4, 2);
insert into friendship values (7, 8);
--insert into friendship values (friend1Id, friend2Id);



--Defined (softwareId, tagId)
insert into defined values (1, 2);
--insert into defined values (softwareId, tagId);

--Expands (basegame, dlc)
insert into expands values(2,3);
insert into expands values(4,5);
insert into expands values(9,11);
insert into expands values(9,11);

commit;
