-- making sure there are no conflicts

set define off;

drop sequence tagIdN;
drop sequence softwareIdN;
drop sequence userIdN;
drop sequence transactionIdN;
drop sequence threadIdN;

drop table tagTab cascade constraints;
drop table publisherTab cascade constraints;
drop table softwareTab cascade constraints;
drop table userTab cascade constraints;
drop table transactionTab cascade constraints;
drop table ownsTab cascade constraints;
drop table reviewTab cascade constraints;
drop table hasTab cascade constraints;
drop table friendshipTab cascade constraints;
drop table definedTab cascade constraints;
drop table expandsTab cascade constraints;
drop table threadTab cascade constraints;
drop table commentsTab cascade constraints;
commit;


-- table creation

create table tagTab (
    tagId number(3, 0),
    tagName varchar2(30),
    tagDescription varchar2(400),
    primary key(tagId)
);

create table publisherTab (
    publisherName varchar2(30),
    foundingYear number(4, 0),
    country varchar2(200),
    primary key(publisherName)
);

create table softwareTab (
    softwareId number(3, 0),
    softwareName varchar2(200),
    releaseDate Date,
    price number(6, 2),
    softwareDescription varchar2(1000),
    ageRating number(2, 0),
    publisherName varchar2(30),
    primary key(softwareId),
    foreign key(publisherName) references publisherTab(publisherName)
);

create table userTab (
    userId number(3,0),
    email varchar2(320),
    username varchar2(30),
    fullName varchar2(100),
    birthDate Date,
    region varchar2(30),
    primary key(userId)
);

create table transactionTab (
    transactionId number(3, 0),
    transactionDate Date,
    paymentType varchar2(30),
    recipientId number(3, 0),
    userId number(3, 0),
    primary key(transactionId),
    foreign key(userId) references userTab(userId)
);

create table ownsTab (
    userId number(3, 0),
    softwareId number(3, 0),
    primary key(userId, softwareId),
    foreign key(userId) references userTab(userId),
    foreign key(softwareId) references softwareTab(softwareId)
);

create table reviewTab (
    userId number(3, 0),
    softwareId number(3, 0),
    reviewDescription varchar2(1000),
    stars number(2,1),
    reviewDate Date,
    primary key(userId, softwareId),
    foreign key(userId) references userTab(userId),
    foreign key(softwareId) references softwareTab(softwareId)
);

create table hasTab (
    transactionId number(3, 0),
    softwareId number(3, 0),
    primary key(transactionId, softwareId),
    foreign key(transactionId) references transactionTab(transactionId),
    foreign key(softwareId) references softwareTab(softwareId)
);

create table friendshipTab (
    friend1 number(3, 0),
    friend2 number(3, 0),
    primary key(friend1, friend2),
    foreign key(friend1) references userTab(userId),
    foreign key(friend2) references userTab(userId)
);

create table definedTab (
    tagId number(3, 0),
    softwareId number(3, 0),   
    primary key(tagId, softwareId),
    foreign key(tagId) references tagTab(tagId),
    foreign key(softwareId) references softwareTab(softwareId)
);

create table expandsTab (
    basegame number(3,0),
    dlc number(3,0), 
    primary key(basegame, dlc),
    foreign key(basegame) references softwareTab(softwareId),
    foreign key(dlc) references softwareTab(softwareId)
);

create table threadTab (
    threadId number(3, 0),
    userId number(3, 0),
    title varchar2(200),
    creationDate Date,
    softwareId number(3, 0), 
    primary key(threadId),
    foreign key(userId) references userTab(userId),
    foreign key (softwareId) references softwareTab(softwareId) 
);


create table commentsTab (
    threadId number(3, 0),
    userId number(3, 0),
    textA varchar2(1000),
    primary key(userId, threadId),
    foreign key(userId) references userTab(userId),
    foreign key (threadId) references threadTab(threadId)
);

commit;

-- sequence creation

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

create sequence threadIdN
start with 1
increment by 1;

commit;


-- data insertion

insert into tagTab values (tagIdN.nextval, 'Action', 'An action game is a video game genre that emphasizes physical challenges, including hand-eye coordination and reaction-time. The genre includes a large variety of sub-genres, such as fighting games, beat ''em ups, shooter games, and platform games.');
insert into tagTab values (tagIdN.nextval, 'Adventure', 'An adventure game is a video game in which the player assumes the role of a protagonist in an interactive story driven by exploration and/or puzzle-solving.[1] The genre''s focus on story allows it to draw heavily from other narrative-based media, literature and film, encompassing a wide variety of literary genres.');
insert into tagTab values (tagIdN.nextval, 'Fighting', 'A fighting game (also known as versus fighting game) is a video game genre that involves combat between two (or more) players. Fighting game combat features mechanics such as blocking, grappling, counter-attacking, and chaining attacks together into "combos".');
insert into tagTab values (tagIdN.nextval, 'Horror', 'A horror game is a video game genre centered on horror fiction and typically designed to scare the player. Unlike most other video game genres, which are classified by their gameplay, horror games are nearly always based on narrative or visual presentation, and use a variety of gameplay types.');
insert into tagTab values (tagIdN.nextval, 'Simulation', 'A simulation game attempts to copy various activities from real life in the form of a game for various purposes such as training, analysis, prediction, or simply entertainment. Usually there are no strictly defined goals in the game, with the player instead allowed to control a character or environment freely.');
insert into tagTab values (tagIdN.nextval, 'RPG', 'A role-playing game is a game in which players assume the roles of characters in a fictional setting. Players take responsibility for acting out these roles within a narrative, either through literal acting or through a process of structured decision-making regarding character development.');
insert into tagTab values (tagIdN.nextval, 'Racing', 'Racing games are a video game genre in which the player participates in a racing competition. They are distributed along a spectrum between more realistic racing simulations and more fantastical arcade-style racing games.');
insert into tagTab values (tagIdN.nextval, 'Puzzle', 'Puzzle video games make up a broad genre of video games that emphasize puzzle solving. The types of puzzles can test problem-solving skills, including logic, pattern recognition, sequence solving, spatial recognition, and word completion.');
insert into tagTab values (tagIdN.nextval, 'Strategy', 'Strategy is a major video game genre that emphasizes thinking and planning over direct instant action in order to achieve victory.[1] Although many types of video games can contain strategic elements, as a genre, strategy games are most commonly defined as those with a primary focus on high-level strategy, logistics and resource management.');
insert into tagTab values (tagIdN.nextval, 'Sports', 'A sports video game is a video game that simulates the practice of sports. Most sports have been recreated with a game, including team sports, track and field, extreme sports, and combat sports.');
--10
insert into tagTab values (tagIdN.nextval, 'Compatible with Windows', 'This software is compatible with the Windows operating system.');
insert into tagTab values (tagIdN.nextval, 'Compatible with Mac OS', 'This software is compatible with the Mac operating system.');
insert into tagTab values (tagIdN.nextval, 'Compatible with Lunix/Unix', 'This software is compatible with the Lunix and Unix operating systems.');
insert into tagTab values (tagIdN.nextval, 'RV Compatibility', 'In order to use this software, it is recommended that you have a virtual reality headset. Some examples are Valve Index, HTC Vive, Oculus Rift and Windows Mixed Reality.');
insert into tagTab values (tagIdN.nextval, 'Controller Compatibility', 'You can use a controller to interact with this software.');
insert into tagTab values (tagIdN.nextval, 'Single-player', 'This game is strongly or completely focused in a single-player gameplay.');
insert into tagTab values (tagIdN.nextval, 'Multiplayer', 'This game is strongly or completely focused in a competitive/cooperative gameplay.');
commit;

--insert into tagTab values (tagIdN.nextval, 'tagName', 'tagDescription');


--ordem alfabetica de nome
insert into publisherTab values ('2K Games', 2005, 'USA');
insert into publisherTab values ('Activision', 1979, 'USA');
---
insert into publisherTab values ('Atari, SA', 2003, 'France');
insert into publisherTab values ('Atarti, Inc', 1972, 'USA');
insert into publisherTab values ('Bandai Namco Entertainment', 2006, 'Japan');
insert into publisherTab values ('Bethesda Softworks', 1986, 'USA');
insert into publisherTab values ('Blizzard Entertainment', 1991, 'USA');
insert into publisherTab values ('Capcom', 1979, 'Japan');
insert into publisherTab values ('CD Projekt Red', 1994, 'Poland');
insert into publisherTab values ('Codemasters', 1986, 'UK');

insert into publisherTab values ('Deep Silver', 1889, 'Germany');
insert into publisherTab values ('Dovetail Games', 2008, 'UK');
insert into publisherTab values ('Electronic Arts', 1982, 'USA');
insert into publisherTab values ('Gameloft', 1999, 'France');
insert into publisherTab values ('Konami', 1969, 'Japan');
insert into publisherTab values ('Koch Media', 1994, 'Germany');
insert into publisherTab values ('Microsoft', 1975, 'USA');
insert into publisherTab values ('Nintendo', 1889, 'Japan');
insert into publisherTab values ('PopCap Games', 2000, 'USA');
insert into publisherTab values ('Rockstar Games', 1998, 'USA');

insert into publisherTab values ('Rare', 1985, 'UK');
insert into publisherTab values ('Riot Games', 2006, 'USA');
insert into publisherTab values ('SCS Software', 1997, 'Czech Republic');
insert into publisherTab values ('Sega', 1951, 'Japan');
insert into publisherTab values ('SNK Corporation', 1978, 'Japan');
insert into publisherTab values ('Sony Interactive Entertainment', 1993, 'USA');
insert into publisherTab values ('Square Enix', 1975, 'Japan');
insert into publisherTab values ('Square Enix Europe', 1990, 'UK');
insert into publisherTab values ('Team17', 1990, 'UK');
insert into publisherTab values ('Ubisoft', 1986, 'France');

insert into publisherTab values ('Valve', 1996, 'USA');
insert into publisherTab values ('Warner Bros. Interactive', 2004, 'USA');
insert into publisherTab values ('Nerd Monkeys', 2013, 'Portugal');
insert into publisherTab values ('Adobe', 1982, 'USA');
insert into publisherTab values ('GIANTS Software', 2004, 'Portugal');

commit;
--insert into publisherTab values ('name', YYYY, 'country');



--softwareTab (softwareId, softwareName, releaseDate, price, softwareDescription, classification, ageRating, publisherName)
--ordem alfabetica de publishers, dlc por baixo do respetivo jogo
insert into softwareTab values (softwareIdN.nextval, 'Borderlands Game of the Year', to_date('2009.10.20', 'YYYY.MM.DD'), 29.99, 'Lock, Load, & Face the Madness! Get ready for the mind blowing insanity! Play as one of four trigger-happy mercenaries and take out everything that stands in your way! With its addictive action, frantic first-person shooter combat, massive arsenal of weaponry, RPG elements and four-player co-op*, Borderlands is a breakthrough experience that challenges all the conventions of modern shooters. Borderlands places you in the role of a mercenary on the lawless and desolate planet of Pandora, hell-bent on finding a legendary stockpile of powerful alien technology known as The Vault.', 18, '2K Games');
insert into softwareTab values (softwareIdN.nextval, 'Borderlands 2', to_date('2012.09.18', 'YYYY.MM.DD'), 29.99, 'A new era of shoot and loot is about to begin. Play as one of four new vault hunters facing off against a massive new world of creatures, psychos and the evil mastermind, Handsome Jack. Make new friends, arm them with a bazillion weapons and fight alongside them in 4 player co-op on a relentless quest for revenge and redemption across the undiscovered and unpredictable living planet.', 18, '2K Games');
insert into softwareTab values (softwareIdN.nextval, 'Borderlands 2 Season Pass', to_date('2012.09.21', 'YYYY.MM.DD'), 29.99, 'Can''t get enough Borderlands? The Borderlands 2 Season Pass is packed full of adventure, featuring new campaigns, new locations, new enemies and a level cap increase. Fight pirates and discover new treasure alongside Captain Scarlett, become champion in Mr. Torgue''s epic arena, and track down new monsters in Sir Hammerlock''s Big Game Hunt. Unlock more skills and levels with the Ultimate Vault Hunter Upgrade Pack. Buy the season pass and get all four campaign add-ons plus the level cap for the price of three add-on campaigns -- a 33% savings. All Season Pass content will be available by June 2013.', 18, '2K Games');
insert into softwareTab values (softwareIdN.nextval, 'Borderlands: The Pre-Sequel', to_date('2014.10.14', 'YYYY.MM.DD'), 39.99, 'LAUNCH INTO THE BORDERLANDS UNIVERSE AND SHOOT ''N'' LOOT YOUR WAY THROUGH A BRAND NEW ADVENTURE THAT ROCKETS YOU ONTO PANDORA''S MOON IN BORDERLANDS: THE PRE-SEQUEL!', 18, '2K Games');
insert into softwareTab values (softwareIdN.nextval, 'Borderlands: The Pre-Sequel Season Pass', to_date('2015.03.24', 'YYYY.MM.DD'), 29.99, 'Extend the lunar mayhem with the Borderlands: The Pre-Sequel Season Pass featuring new characters, challenges, missions, and more.', 18, '2K Games');
insert into softwareTab values (softwareIdN.nextval, 'Shock Drop Slaughter Pit', to_date('2014.12.16', 'YYYY.MM.DD'), 3.99, 'Enter the Shock Drop Slaughter Pit and face off against the toughest Scavs on Pandora''s moon, Elpis! Survive the battle and you''ll be feared and respected by the few left alive. Not to mention the experience and gear you''ll earn!', 18, '2K Games');
insert into softwareTab values (softwareIdN.nextval, 'Ultimate Vault Hunter Upgrade Pack: The Holodome Onslaught', to_date('2014.12.16', 'YYYY.MM.DD'), 9.99, 'With all new narrative content, this add-on begins as Vault Hunters Axton and Gaige catch up on the story thus far via The Holodome Onslaught, a new challenge arena that lets players fight through wave after wave of exciting enemies and bosses. While the veteran Vault Hunters join the rest of the crew at Crimson Raiders HQ and learn of recent events, players will face off against some of the game''s most memorable badasses to earn awesome, new weapons and gear along with radical new heads and skins!', 18, '2K Games');
insert into softwareTab values (softwareIdN.nextval, 'Handsome Jack Doppelganger Pack', to_date('2014.11.14', 'YYYY.MM.DD'), 9.99, 'Play as everyone''s favorite maniacal tyrant-in-training ...or at least his body double. With the Handsome Jack Doppelganger Pack, use the power of your good looks and charm to distract your enemies into submission. Or, just cut them down to size with your witty banter. Or just shoot them. That works too.', 18, '2K Games');
insert into softwareTab values (softwareIdN.nextval, 'Borderlands 3', to_date('2020.03.13', 'YYYY.MM.DD'), 59.99,  'The original shooter-looter returns, packing bazillions of guns and an all-new mayhem-fueled adventure! Blast through new worlds and enemies as one of four brand new Vault Hunters. The ultimate treasure-seeking badasses of the Borderlands, each with deep skill trees, abilities, and customization. Play solo or join with friends to take on insane enemies, score loads of loot and save your home from the most ruthless cult leaders in the galaxy.', 18, '2K Games');
insert into softwareTab values (softwareIdN.nextval, 'Borderlands 3 Season Pass', to_date('2020.03.13', 'YYYY.MM.DD'), 49.99, 'Continue your Borderlands 3 adventure with the Season Pass!', 18, '2K Games');
--10
insert into softwareTab values (softwareIdN.nextval, 'Borderlands 3 Season Pass 2', to_date('2020.11.09', 'YYYY.MM.DD'), 29.99, 'Enhance Borderlands 3 with the content add-ons of Season Pass 2, featuring new modes and missions, a fourth skill tree for each Vault Hunter, a raid boss, three Vault Cards, and unique cosmetic outfits!', 18, '2K Games');
insert into softwareTab values (softwareIdN.nextval, 'Bioshock', to_date('2007.08.21', 'YYYY.MM.DD'), 19.99, 'BioShock is a shooter unlike any you''ve ever played, loaded with weapons and tactics never seen. You''ll have a complete arsenal at your disposal from simple revolvers to grenade launchers and chemical throwers, but you will also be forced to genetically modify your DNA to create an even more deadly weapon: you. Injectable plasmids give you super human powers: blast electrical currents into water to electrocute multiple enemies, or freeze them solid and obliterate them with the swing of a wrench. No encounter ever plays out the same, and no two gamers will play the game the same way.', 18, '2K Games');
insert into softwareTab values (softwareIdN.nextval, 'Bioshock 2', to_date('2010.02.09', 'YYYY.MM.DD'), 19.99, 'Set approximately 10 years after the events of the original BioShock, the halls of Rapture once again echo with sins of the past. Along the Atlantic coastline, a monster has been snatching little girls and bringing them back to the undersea city of Rapture. Players step into the boots of the most iconic denizen of Rapture, the Big Daddy, as they travel through the decrepit and beautiful fallen city, chasing an unseen foe in search of answers and their own survival.', 18, '2K Games');
insert into softwareTab values (softwareIdN.nextval, 'The Elder Scrolls Online', to_date('2014.04.04', 'YYYY.MM.DD'), 19.99, 'The Elder Scrolls Online, abbreviated ESO, is a massively multiplayer online role-playing game (MMORPG) developed by ZeniMax Online Studios and published by Bethesda Softworks. The game is set in the continent of Tamriel and features a storyline indirectly connected with the other games in the Elder Scrolls franchise.', 12, 'Bethesda Softworks');
insert into softwareTab values (softwareIdN.nextval, 'The Sims 4', to_date('2014.09.02', 'YYYY.MM.DD'), 19.99, 'The Sims 4 is a 2014 life simulation video game developed by Maxis and The Sims Studio and published by Electronic Arts. It focuses on its improved character creation and housebuilding tools, as well as deeper in-game simulation with the new emotion and personality systems for Sims.', 12, 'Electronic Arts');
insert into softwareTab values (softwareIdN.nextval, 'Legend of Zelda: Breath of the Wild', to_date('2017.03.03', 'YYYY.MM.DD'), 19.99, 'The Legend of Zelda: Breath of the Wild is a 2017 action-adventure game developed and published by Nintendo for the Nintendo Switch and Wii U consoles. The game is an installment of The Legend of Zelda series and is set at the end of its timeline. The player controls an amnesiac Link, who awakens from a hundred-year slumber, and attempts to regain his memories and prevent the destruction of Hyrule by Calamity Ganon.', 10, 'Nintendo');
insert into softwareTab values (softwareIdN.nextval, 'Animal Crossing: New Leaf', to_date('2012.11.08', 'YYYY.MM.DD'), 19.99, 'Animal Crossing: New Leaf is a 2012 social simulation video game developed and published by Nintendo for the Nintendo 3DS console. In the game, the human character takes on the role of mayor in a town populated with anthropomorphic animals. While retaining gameplay from older titles, Animal Crossing: New Leaf marks a change in the series, as the player now becomes the mayor of the town. With the help of the townsfolk and a secretary it is now the players job to make the town a better place to live.', 3, 'Nintendo');
insert into softwareTab values (softwareIdN.nextval, 'Animal Crossing: New Horizons', to_date('2020.03.20', 'YYYY.MM.DD'), 59.99, 'Animal Crossing: New Horizons is a 2020 social simulation game developed and published by Nintendo for the Nintendo Switch; it is the fifth main entry in the Animal Crossing series. In New Horizons, the player controls a character who moves to a deserted island after purchasing a getaway package from Tom Nook, accomplishes assigned tasks, and develops the island as they choose. They can gather and craft items, customize the island, and develop it into a community of anthropomorphic animals.', 3, 'Nintendo');
insert into softwareTab values (softwareIdN.nextval, 'Grand Theft Auto V', to_date('2013.09.17', 'YYYY.MM.DD'), 34.99, 'Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the seventh main entry in the Grand Theft Auto series, following 2008s Grand Theft Auto IV, and the fifteenth instalment overall. Set within the fictional state of San Andreas, based on Southern California, the single-player story follows three protagonists'' retired bank robber Michael De Santa, street gangster Franklin Clinton, and drug dealer and gunrunner Trevor Philips'' and their attempts to commit heists while under pressure from a corrupt government agency and powerful criminals. The open world design lets players freely roam San Andreas open countryside and the fictional city of Los Santos, based on Los Angeles.', 18, 'Rockstar Games');
insert into softwareTab values (softwareIdN.nextval, 'The Witcher 3: Wild Hunt', to_date('2015.05.19', 'YYYY.MM.DD'), 29.99, 'The Witcher 3: Wild Hunt is an action role-playing video game developed by Polish developer CD Projekt Red, and first published in 2015. It is the sequel to the 2011 game The Witcher 2: Assassins of Kings and the third game in The Witcher video game series, played in an open world with a third-person perspective.', 18, 'CD Projekt Red');
--20
insert into softwareTab values (softwareIdN.nextval, 'The Witcher 3: Wiunt - Blood and Wine', to_date('2016.05.20', 'YYYY.MM.DD'), 19.99,  'Become professional monster slayer Geralt of Rivia and explore Toussaint, a remote land untouched by war, where you will unravel the horrifying secret behind a beast terrorizing the kingdom. With all trails leading to dead ends, only a witcher can solve the mystery and survive the evil lurking in the night.', 18, 'CD Projekt Red'); 
insert into softwareTab values (softwareIdN.nextval, 'The Witcher 3: Wild Hunt - Hearts of Stone', to_date('2015.10.13', 'YYYY.MM.DD'), 9.99,  'Step again into the shoes of Geralt of Rivia, a professional monster slayer, this time hired to defeat a ruthless bandit captain, Olgierd von Everec — a man who possesses the power of immortality.', 18, 'CD Projekt Red');
insert into softwareTab values (softwareIdN.nextval, 'Detective Case and Clown Bot in: Murder in the Hotel Lisbon', to_date('2014.07.17', 'YYYY.MM.DD'), 4.99, 'A strange murder has occurred in the Hotel Lisbon, a man committed suicide with 14 stabs to the back while at the same time he peacefully drank his coffee. This case with contradictory facts could only be solved by the amazing Detective Case and his sidekick, Clown Bot.', 18, 'Nerd Monkeys');
insert into softwareTab values (softwareIdN.nextval, 'Detective Case and Clown Bot in: The Express Killer', to_date('2018.07.18', 'YYYY.MM.DD'), 6.99, 'Someone has been killing passengers on the express train from Lisbon to Porto, every single day since Tuesday! Someone needs to stop the killer! Detective Case and Clown Bot are back and… is that a kid in the logo?', 18, 'Nerd Monkeys');
insert into softwareTab values (softwareIdN.nextval, 'Call of Duty: Black Ops', to_date('2010.11.09', 'YYYY.MM.DD'), 39.99,  'The biggest first-person action series of all time and the follow-up to last year''s blockbuster Call of Duty®: Modern Warfare 2 returns with Call of Duty®: Black Ops. Call of Duty®: Black Ops will take you behind enemy lines as a member of an elite special forces unit engaging in covert warfare, classified operations, and explosive conflicts across the globe. With access to exclusive weaponry and equipment, your actions will tip the balance during the most dangerous time period mankind has ever known.', 18, 'Activision');
insert into softwareTab values (softwareIdN.nextval, 'Call of Duty: Black Ops First Strike Content Pack', to_date('2011.03.25', 'YYYY.MM.DD'), 13.99,  'First Strike contains 5 incredibly diverse maps spanning the globe; featuring 4 new multiplayer maps and a new Zombie experience. "Berlin Wall" features combat on both sides of the imposing wall; "Discovery" is a desolate, frozen German outpost in Antarctica; in "Kowloon", battle in the rain along the rooftops of a towering Chinese sprawl; "Stadium" is an intense locale with a pro hockey arena backdrop; and in "Ascension", fight zombies in a Soviet launch facility.', 18, 'Activision');        
insert into softwareTab values (softwareIdN.nextval, 'Call of Duty: Black Ops Escalation Content Pack', to_date('2011.06.02', 'YYYY.MM.DD'), 13.99,  '"Escalation", the second Call of Duty: Black Ops map pack, contains 5 all-new exceptionally varied maps; featuring 4 Multiplayer maps and an epic Black Ops Zombies experience with all-new playable characters.', 18, 'Activision');        
insert into softwareTab values (softwareIdN.nextval, 'Call of Duty: Black Ops Annihilation Content Pack', to_date('2011.07.28', 'YYYY.MM.DD'), 13.99,  'Obliterate the competition with “Annihilation,” the newest downloadable content pack for "Call of Duty: Black Ops", with 4 unique Multiplayer Maps and a wild new locale for the latest in unrelenting Zombies action.', 18, 'Activision');        
insert into softwareTab values (softwareIdN.nextval, 'Call of Duty: Black Ops - Rezurrection Content Pack', to_date('2011.09.22', 'YYYY.MM.DD'), 13.99,  'Lift off into the latest Zombies epic with “Rezurrection,” the new downloadable content pack for “Call of Duty: Black Ops,” and the first to launch players into space for a new dimension of undead action!', 18, 'Activision');
insert into softwareTab values (softwareIdN.nextval, 'Farming Simulator 22', to_date('2021.11.22', 'YYYY.MM.DD'), 39.99, 'Create your farm and let the good times grow! Harvest crops, tend to animals, manage productions, and take on seasonal challenges.', 3, 'GIANTS Software');
--30
insert into softwareTab values (softwareIdN.nextval, 'Farming Simulator 19', to_date('2018.11.19', 'YYYY.MM.DD'), 19.99, 'The best-selling franchise takes a giant leap forward with a complete overhaul of the graphics engine, offering the most striking and immersive visuals and effects, along with the deepest and most complete farming experience ever.', 3, 'GIANTS Software');
insert into softwareTab values (softwareIdN.nextval, 'Euro Truck Simulator 2', to_date('2012.10.18', 'YYYY.MM.DD'), 19.99, 'Travel across Europe as king of the road, a trucker who delivers important cargo across impressive distances! With dozens of cities to explore, your endurance, skill and speed will all be pushed to their limits.', 3, 'SCS Software');
insert into softwareTab values (softwareIdN.nextval, 'Euro Truck Simulator 2 - Iberia', to_date('2021.04.08', 'YYYY.MM.DD'), 17.99, 'The Iberian Peninsula is full of rich and diverse landscapes, from semi-arid southeastern deserts to the green coniferous forests. Iberia is home to numerous historic villages and towns, narrow streets, old churches and impressive castles.', 3, 'SCS Software');
insert into softwareTab values (softwareIdN.nextval, 'Euro Truck Simulator 2 - Scandinavia', to_date('2015.05.06', 'YYYY.MM.DD'), 17.99, 'This map expansion features Sweden, Norway and Denmark, with mile upon mile of scenic roads and numerous landmarks to see across these three beautiful Nordic countries. New ferry terminals also allow you to board ferries directly and access the coastal cities plus use new sea routes to ports in northern Germany, Poland, and the United Kingdom.', 3, 'SCS Software');
insert into softwareTab values (softwareIdN.nextval, 'American Truck Simulator', to_date('2016.02.02', 'YYYY.MM.DD'), 19.99, 'Experience legendary American trucks and deliver various cargoes across sunny California, sandy Nevada, and the Grand Canyon State of Arizona. American Truck Simulator takes you on a journey through the breathtaking landscapes and widely recognized landmarks around the States.', 3, 'SCS Software');


commit;

select * 
from softwareTab;

--insert into softwareTab values (softwareIdN.nextval, 'name', to_date('YYYY.MM.DD', 'YYYY.MM.DD'), E.C,  'description', ageRating, 'publisherName');        





--userTab (userId, email, username, fullName, birthDate, region)
insert into userTab values(userIdN.nextval, 'johnnyboy@gmail.com', 'johnnyboy74', 'John Cooper Smith', to_Date('2004.01.02', 'YYYY.MM.DD'), 'North America');
insert into userTab values(userIdN.nextval, 'hellokitty@sapo.pt', 'hellokitty6', 'Andreia Alves', to_Date('1995.10.23', 'YYYY.MM.DD'), 'Western Europe');
insert into userTab values(userIdN.nextval, 'micwarriorxd@sapo.pt', 'micwarriorXD', 'Miguel Francisco Rodrigues', to_Date('2006.07.15', 'YYYY.MM.DD'), 'South America');
insert into userTab values(userIdN.nextval, '1beastfigther@gmail.com', '1beastfigther1', 'Rajesh Koothrappali', to_Date('1980.03.30', 'YYYY.MM.DD'), 'Central Asia');
insert into userTab values(userIdN.nextval, 'youssefthebest@gmail.com', 'youssefthebest99', 'Youssef Alami', to_Date('1978.05.09', 'YYYY.MM.DD'), 'North Africa');
--5
insert into userTab values(userIdN.nextval, 'davhergamer@gmail.com', 'davher909', 'David Hernandez', to_Date('2002.07.26', 'YYYY.MM.DD'), 'Central America');
insert into userTab values(userIdN.nextval, 'franciscocunhadasilva@sapo.pt', 'franciscosilva', 'Francisco Cunha da Silva', to_Date('1969.11.20', 'YYYY.MM.DD'), 'Western Europe');
insert into userTab values(userIdN.nextval, 'dmitrikillall@sapo.pt', 'dmitrikillall', 'Dmitri Smirnov', to_Date('1992.12.01', 'YYYY.MM.DD'), 'Eastern Europe');
insert into userTab values(userIdN.nextval, 'keyboardninja@gmail.com', 'keyboardninja420', 'Zhang Wei', to_Date('2000.01.13', 'YYYY.MM.DD'), 'East Asia');
insert into userTab values(userIdN.nextval, 'gilmariogamer@gmail.com', 'gilmariogamer33', 'Gilmario Cossa', to_Date('1972.09.19', 'YYYY.MM.DD'), 'South Africa');
--10
insert into userTab values(userIdN.nextval, 'theaussietrain@gmail.com', 'theaussietrain', 'Charlotte Wilson', to_Date('2008.08.05', 'YYYY.MM.DD'), 'Oceania');
insert into userTab values(userIdN.nextval, 'mualitheog@gmail.com', 'mualitheog', 'Muhammad Ali', to_Date('1962.11.25', 'YYYY.MM.DD'), 'Middle East');
insert into userTab values(userIdN.nextval, 'thegoldgirl@sapo.pt', 'thegoldgirl01', 'Liudmila Julia Holub', to_Date('1984.04.08', 'YYYY.MM.DD'), 'Eastern Europe');
insert into userTab values(userIdN.nextval, 'dieubeaofficial@sapo.pt', 'dieu_bea_official', 'Dieudonne Beatrice', to_Date('1979.05.02', 'YYYY.MM.DD'), 'Western Europe');
insert into userTab values(userIdN.nextval, 'narutoirl@gmail.com', 'narutoirlgamer', 'Shinju Tatsuya Suzuki', to_Date('1999.10.17', 'YYYY.MM.DD'), 'East Asia');
--15
insert into userTab values(userIdN.nextval, 'minecraftislife@gmail.com', 'iloveminecraft3', 'Ntombi Bandile', to_Date('2003.09.18', 'YYYY.MM.DD'), 'South Africa');
insert into userTab values(userIdN.nextval, 'oliverpeakyshelby@gmail.com', 'darealpeaky666', 'Oliver Shelby', to_Date('2010.06.01', 'YYYY.MM.DD'), 'Oceania');
insert into userTab values(userIdN.nextval, 'anwershahdbusinessg@gmail.com', 'anwerbestfifaplayer', 'Anwer Shahd', to_Date('2005.04.13', 'YYYY.MM.DD'), 'Middle East');
insert into userTab values(userIdN.nextval, 'kateberryitb@gmail.com', 'berryinthebush59', 'Kate Bush Perry', to_Date('1993.03.24', 'YYYY.MM.DD'), 'North America');
insert into userTab values(userIdN.nextval, 'juangarciaper@sapo.pt', '1garciaelgato1', 'Juan Garcia Pereira', to_Date('1994.07.03', 'YYYY.MM.DD'), 'Western Europe');
--20
insert into userTab values(userIdN.nextval, 'whindthewind@sapo.pt', 'whindthewindbr', 'Whindersson Caetano', to_Date('1990.05.15', 'YYYY.MM.DD'), 'South America');
insert into userTab values(userIdN.nextval, 'samirranjit@gmail.com', 'samiruarebreakinthecar', 'Samir Ranjit', to_Date('1975.02.28', 'YYYY.MM.DD'), 'Central Asia');
insert into userTab values(userIdN.nextval, 'infamousnileguard@gmail.com', 'akiltheguard001', 'Akil Salah', to_Date('1988.10.09', 'YYYY.MM.DD'), 'North Africa');
insert into userTab values(userIdN.nextval, 'dacrazycubancigar@gmail.com', 'cuban7cigar', 'Veronica Benita Fredrick', to_Date('1997.01.16', 'YYYY.MM.DD'), 'Central America');
insert into userTab values(userIdN.nextval, 'karentherep@gmail.com', 'karenamerica50', 'Karen Texas', to_Date('1970.07.07', 'YYYY.MM.DD'), 'North America');
--25
commit;

select * from userTab;

--insert into userTab values(userId.nextval, 'name@domain.com', 'username', 'fullname', YYYY.MM.DD, 'region');


--Transaction (transactionId, transactionDate, paymentType, recipientId, userId)
insert into transactionTab values (transactionIdN.nextval, to_Date('2022.04.19', 'YYYY.MM.DD'), 'PayPal', 2, 2);
insert into transactionTab values (transactionIdN.nextval, to_Date('2019.05.23', 'YYYY.MM.DD'), 'MBWay', 1, 4);
insert into transactionTab values (transactionIdN.nextval, to_Date('2020.06.07', 'YYYY.MM.DD'), 'MasterCard', 1, 1);
insert into transactionTab values (transactionIdN.nextval, to_Date('2020.06.03', 'YYYY.MM.DD'), 'MBWay', 1, 1);
insert into transactionTab values (transactionIdN.nextval, to_Date('2020.07.05', 'YYYY.MM.DD'), 'Visa', 4, 8);
--5
insert into transactionTab values (transactionIdN.nextval, to_Date('2021.11.25', 'YYYY.MM.DD'), 'MasterCard', 9, 2);
insert into transactionTab values (transactionIdN.nextval, to_Date('2020.03.30', 'YYYY.MM.DD'), 'PaySafeCard', 3, 7);
insert into transactionTab values (transactionIdN.nextval, to_Date('2022.01.30', 'YYYY.MM.DD'), 'ATM', 2, 3);
insert into transactionTab values (transactionIdN.nextval, to_Date('2017.08.15', 'YYYY.MM.DD'), 'PayShop', 4, 5);
insert into transactionTab values (transactionIdN.nextval, to_Date('2022.05.29', 'YYYY.MM.DD'), 'PayPal', 12, 12);
--10
insert into transactionTab values (transactionIdN.nextval, to_Date('2022.01.03', 'YYYY.MM.DD'), 'MBWay', 20, 20);
insert into transactionTab values (transactionIdN.nextval, to_Date('2022.03.27', 'YYYY.MM.DD'), 'ATM', 19, 1);

commit;

select * from transactionTab;
--insert into transactionTab values (transactionIdN.nextval, YYYY.MM.DD, 'paymentType', recipientId, userId);


--ownsTab (userId, softwareId)
insert into ownsTab values (2, 2);
insert into ownsTab values (1, 2);
insert into ownsTab values (1, 3);
insert into ownsTab values (1, 6);
insert into ownsTab values (1, 10);
insert into ownsTab values (4, 9);
insert into ownsTab values (9, 14);
insert into ownsTab values (9, 15);
insert into ownsTab values (9, 16);
insert into ownsTab values (9, 17);
insert into ownsTab values (3, 18);

insert into ownsTab values (2, 17);
insert into ownsTab values (2, 19);
insert into ownsTab values (4, 8);
insert into ownsTab values (4, 19);
insert into ownsTab values (12, 23);
insert into ownsTab values (12, 24);
insert into ownsTab values (20, 30);
insert into ownsTab values (20, 31);
insert into ownsTab values (20, 32);
insert into ownsTab values (20, 33);

insert into ownsTab values (20, 34);
insert into ownsTab values (20, 35);
insert into ownsTab values (19, 32);
insert into ownsTab values (19, 33);
insert into ownsTab values (19, 34);


commit;

--insert into ownsTab values (userId, softwareId);

--reviewTab (userId, softwareId, reviewDescription, stars, reviewDate)
insert into reviewTab values (1, 3, 'Very good Season Pass! :)', 4.5, to_date('2022.04.05', 'YYYY.MM.DD'));
insert into reviewTab values (1, 10, 'Multiplayer is kinda lonely but overall I recommend it', 4.0, to_date('2020.09.12', 'YYYY.MM.DD'));
insert into reviewTab values (9, 14, 'One of the best games of all time!!', 4.8, to_date('2021.12.31', 'YYYY.MM.DD'));
insert into reviewTab values (2, 19, '', 3.8, to_date('2017.10.15', 'YYYY.MM.DD'));
insert into reviewTab values (4, 19, 'Could be better, meh', 3.1, to_date('2014.04.17', 'YYYY.MM.DD'));
insert into reviewTab values (12, 23, 'Melhor jogo de sempreeee. Vamos Portugal', 5.0, to_date('2015.04.30', 'YYYY.MM.DD'));
insert into reviewTab values (12, 24, '', 5.0, to_date('2019.02.05', 'YYYY.MM.DD'));
insert into reviewTab values (19, 33, 'Too expensive for the content', 3.7, to_date('2022.04.26', 'YYYY.MM.DD'));
insert into reviewTab values (19, 34, '', 3.9, to_date('2016.06.09', 'YYYY.MM.DD'));
insert into reviewTab values (20, 33, 'Very good, I love Iberia :D', 4.2, to_date('2022.05.01', 'YYYY.MM.DD'));
insert into reviewTab values (20, 34, 'Big fun with friends', 4.0, to_date('2016.06.28', 'YYYY.MM.DD'));

commit;

select * from reviewTab;

--insert into reviewTab values (userId, softwareId, 'reviewDescription', stars, YYYY.MM.DD);

--hasTab (transactionId, softwareId)
insert into hasTab values(1, 2);
insert into hasTab values(2, 3);
insert into hasTab values(3, 6);
insert into hasTab values(4, 10);
insert into hasTab values(5, 9);
insert into hasTab values(6, 14);
insert into hasTab values(6, 15);
insert into hasTab values(6, 16);
insert into hasTab values(6, 17);
insert into hasTab values(7, 18);
insert into hasTab values(8, 19);
insert into hasTab values(8, 18);
insert into hasTab values(9, 8);
insert into hasTab values(9, 19);
insert into hasTab values(10, 23);
insert into hasTab values(10, 24);

commit;

select * from hasTab;

--insert into hasTab values (transactionId, softwareId);



--friendshipTab (friend1, friend2) ***userId***
insert into friendshipTab values (1, 2);
insert into friendshipTab values (1, 4);
insert into friendshipTab values (1, 7);
insert into friendshipTab values (2, 3);
insert into friendshipTab values (2, 7);
insert into friendshipTab values (4, 2);
insert into friendshipTab values (7, 8);
insert into friendshipTab values (9, 8);
insert into friendshipTab values (10, 8);
insert into friendshipTab values (11, 10);
insert into friendshipTab values (12, 13);
insert into friendshipTab values (15, 14);
insert into friendshipTab values (16, 18);
insert into friendshipTab values (1, 19);
insert into friendshipTab values (1, 18);
insert into friendshipTab values (21, 22);
insert into friendshipTab values (23, 25);
insert into friendshipTab values (20, 24);
commit;

select * from friendshipTab;

--insert into friendshipTab values (friend1Id, friend2Id);



--insert into definedTab values (tagId, softwareId);
insert into definedTab values (1, 2);
insert into definedTab values (1, 11);
insert into definedTab values (1, 13);
insert into definedTab values (1, 19);
insert into definedTab values (1, 20);
insert into definedTab values (1, 21);
insert into definedTab values (1, 22);
insert into definedTab values (1, 24);
insert into definedTab values (1, 25);
insert into definedTab values (1, 26);
insert into definedTab values (1, 27);
insert into definedTab values (1, 28);
insert into definedTab values (2, 20);
insert into definedTab values (2, 21);
insert into definedTab values (2, 22);

insert into definedTab values (11, 19);
insert into definedTab values (11, 20);
insert into definedTab values (11, 21);
insert into definedTab values (11, 22);
insert into definedTab values (11, 23);
insert into definedTab values (11, 24);
insert into definedTab values (11, 25);
insert into definedTab values (11, 26);
insert into definedTab values (11, 27);
insert into definedTab values (11, 28);
insert into definedTab values (11, 29);
insert into definedTab values (11, 30);
insert into definedTab values (11, 31);
insert into definedTab values (11, 32);
insert into definedTab values (11, 33);
insert into definedTab values (11, 34);
insert into definedTab values (11, 35);

insert into definedTab values (6, 20);
insert into definedTab values (6, 21);
insert into definedTab values (6, 22);
insert into definedTab values (5, 15);
insert into definedTab values (5, 30);
insert into definedTab values (5, 31);
insert into definedTab values (5, 32);
insert into definedTab values (5, 33);
insert into definedTab values (5, 34);
insert into definedTab values (5, 35);
insert into definedTab values (15, 30);
insert into definedTab values (15, 31);
insert into definedTab values (15, 32);
insert into definedTab values (15, 33);
insert into definedTab values (15, 34);
insert into definedTab values (15, 35);
insert into definedTab values (16, 30);
insert into definedTab values (16, 31);
insert into definedTab values (16, 32);
insert into definedTab values (16, 33);
insert into definedTab values (16, 34);
insert into definedTab values (16, 35);
insert into definedTab values (17, 30);
insert into definedTab values (17, 31);
insert into definedTab values (17, 32);
insert into definedTab values (17, 33);
insert into definedTab values (17, 34);
insert into definedTab values (17, 35);  

commit;


--expandsTab (basegame, dlc)
insert into expandsTab values(2, 3);
insert into expandsTab values(4, 5);
insert into expandsTab values(9, 10);
insert into expandsTab values(9, 11);
insert into expandsTab values(20, 21);
insert into expandsTab values(20, 22);
insert into expandsTab values(25, 26);
insert into expandsTab values(25, 27);
insert into expandsTab values(25, 28);
insert into expandsTab values(25, 29);

insert into expandsTab values(32, 33);
insert into expandsTab values(32, 34);

commit;

select * from expandsTab;

--insert into expandsTab values(basegame, dlc);


-- insert into threadTab values(threadIdN.nextval, 'title', to_Date('', 'YYYY.MM.DD'), softwareId);
insert into threadTab values(threadIdN.nextval, 1, 'How can I increase fps in The Witcher 3?', to_Date('2016.08.25', 'YYYY.MM.DD'), 20);
insert into threadTab values(threadIdN.nextval, 2,'How to get money fast in GTA5?', to_Date('2018.11.02', 'YYYY.MM.DD'), 19);
insert into threadTab values(threadIdN.nextval, 1,'Are the Sims 4 expansion packs worth the money?', to_Date('2018.11.02', 'YYYY.MM.DD'), 15);


--insert into commentsTab values(threadId, userId, 'comment');
insert into commentsTab values(1, 2, 'Just play with a lower resolution lol');
insert into commentsTab values(1, 3, 'You can set the texture resolution to low :)');
insert into commentsTab values(1, 5, 'You actually can do what they both said. The lower the quality of the graphics, the faster the GPU will process each frame, resulting in higher FPS.');
insert into commentsTab values(2, 4, 'If you''re a fan of microtransactions, the shark cash cards are a good choice.');
insert into commentsTab values(2, 6, 'I mean, are you talking about singleplayer or multiplayer?');
insert into commentsTab values(3, 8, 'They are pretty good at spending your time. If you have lots of it, buy it ;)');



-- Quais os usernames dos utilizadores que ofereceram um jogo com um dado nome? (nome = 'Grand Theft Auto V')
SELECT username
FROM userTab inner join transactionTab using (userId) 
           inner join hasTab using (transactionId)
           inner join softwareTab using (softwareId)
WHERE softwareName = 'Grand Theft Auto V' and recipientId != userId;


-- Quais os nomes e classificações dos jogos da plataforma categorizados como compatíveis para Windows 
--(tag), de simulação (tag) e com uma dada classificação etária? (classificação etária = 12) (mostra
-- apenas aqueles que ja se encontram classsificados)  
 
(select softwareName, classification
from softwareTab inner join classifications using(softwareId)
                 inner join definedTab using (softwareId)
                  inner join tagTab using (tagId)
where tagName = 'Compatible with Windows' and ageRating <= 12)
intersect
(select softwareName, classification
from softwareTab inner join classifications using(softwareId)
                 inner join definedTab using (softwareId)
                 inner join tagTab using (tagId)
where tagName = 'Simulation' and ageRating <= 12);
 

-- Qual o nome e e-mail do utilizador com mais transações feitas na plataforma?

with transactions_num as (
    select userId, count(transactionId) as num
    from transactionTab 
    group by userId
)
select fullName, email, num
from transactions_num inner join userTab using (userId)
where num in (select max(num) from transactions_num)
;

-- Qual o nome do jogo associado à DLC com a melhor classificação na plataforma?

create view classifications as
    with reviewed as (
        select softwareId, avg(stars) as classification
        from reviewTab
        group by softwareId
    )
;


create view dlcs as (
    select dlc
    from expandsTab
);

create view bestDlc as (
    select dlc, softwareName as dlcName, classification
    from dlcs inner join softwareTab on dlcs.dlc = softwareTab.softwareId
              inner join classifications on dlcs.dlc = classifications.softwareId
    where classification in (select max(classification) from (dlcs inner join classifications on dlcs.dlc = classifications.softwareId))
);


select softwareTab.softwareName as basegameName, dlcName, classification 
from bestDlc inner join expandsTab using(dlc)
             inner join softwareTab on softwareTab.softwareId = expandsTab.basegame
;
           
commit;


-- Quais os nomes, descrições, preços e datas de lançamento dos jogos lançados por editoras
-- portuguesas que já foram comprados pelo menos uma vez? 
with transactions_num as (
    select softwareId, count(transactionId) as num
    from transactionTab inner join hasTab using (transactionId)
    group by softwareId
)
select softwareName, softwareDescription, price, releaseDate
from softwareTab inner join transactions_num using (softwareId)
                 inner join publisherTab using (publisherName)
where country = 'Portugal' and num > 0;
