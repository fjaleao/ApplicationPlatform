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
insert into publisherTab values ('Atari', 2003, 'France');
insert into publisherTab values ('Bandai Namco Entertainment', 2006, 'Japan');
insert into publisherTab values ('Bethesda Softworks', 1986, 'USA');
insert into publisherTab values ('Blizzard Entertainment', 1991, 'USA');
---
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
insert into publisherTab values ('GIANTS Software', 2004, 'Switzerland');

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
insert into softwareTab values (softwareIdN.nextval, 'Spyro Reignited Trilogy', to_date('2019.09.03', 'YYYY.MM.DD'), 39.99,  'The original roast master is back! Same sick burns, same smoldering attitude, now all scaled up in stunning HD. Spyro is bringing the heat like never before in the Spyro™ Reignited Trilogy game collection. Rekindle the fire with the original three games, Spyro™ the Dragon, Spyro™ 2: Ripto''s Rage! and Spyro™: Year of the Dragon. Explore the expansive realms, re-encounter the fiery personalities and relive the adventure in fully remastered glory. Because when there''s a realm that needs saving, there''s only one dragon to call.', 10, 'Activision');
insert into softwareTab values (softwareIdN.nextval, 'Crash Bandicoot N. Sane Trilogy', to_date('2018.06.29', 'YYYY.MM.DD'), 39.99,  'Your favorite marsupial, Crash Bandicoot™, is back! He''s enhanced, entranced and ready-to-dance with the N. Sane Trilogy game collection. Now you can experience Crash Bandicoot like never before. Spin, jump, wump and repeat as you take on the epic challenges and adventures through the three games that started it all, Crash Bandicoot™, Crash Bandicoot™ 2: Cortex Strikes Back and Crash Bandicoot™ 3: Warped. Relive all your favorite Crash moments in their fully-remastered graphical glory and get ready to put some UMPH in your WUMP!', 10, 'Activision');
insert into softwareTab values (softwareIdN.nextval, 'Tony Hawk''s Pro Skater 1 + 2', to_date('2021.06.25', 'YYYY.MM.DD'), 24.90,  'DROP BACK IN WITH THE MOST ICONIC SKATEBOARDING GAMES EVER MADE. PLAY TONY HAWK''S™ PRO SKATER™ & TONY HAWK''S™ PRO SKATER™ 2 IN ONE EPIC COLLECTION, REBUILT FROM THE GROUND UP IN INCREDIBLE HD. ALL THE PRO SKATERS, LEVELS AND TRICKS ARE BACK AND FULLY-REMASTERED, PLUS MORE.', 12, 'Activision');
insert into softwareTab values (softwareIdN.nextval, 'Pong', to_date('1972.11.29', 'YYYY.MM.DD'), 0.0,  'Pong is a table tennis-themed twitch arcade sports video game, featuring simple two-dimensional graphics.', 3, 'Atari');
insert into softwareTab values (softwareIdN.nextval, 'Space Invaders', to_date('1978.04.01', 'YYYY.MM.DD'), 0.0,  'Space Invaders is a 1978 shoot ''em up arcade game developed by Tomohiro Nishikado. It was manufactured and sold by Taito in Japan, and licensed to the Midway division of Bally for overseas distribution. Space Invaders was the first fixed shooter and set the template for the shoot ''em up genre.', 3, 'Atari');
--40
insert into softwareTab values (softwareIdN.nextval, 'Pacman', to_date('1980.05.22', 'YYYY.MM.DD'), 0.0,  'Pac-Man is a 1980 maze action video game developed and released by Namco for arcades. ', 3, 'Bandai Namco Entertainment');
insert into softwareTab values (softwareIdN.nextval, 'Elden Ring', to_date('2022.02.24', 'YYYY.MM.DD'), 59.99,  'THE NEW FANTASY ACTION RPG. Rise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.', 16, 'Bandai Namco Entertainment');
insert into softwareTab values (softwareIdN.nextval, 'JoJo''s Bizarre Adventure: All Star Battle', to_date('2013.08.29', 'YYYY.MM.DD'), 19.99,  'Many fans of JoJo''s Bizarre Adventure are captivated by Hirohiko Araki''s unique art style. JoJo''s Bizarre Adventure: All Star Battle R captures the passionate character expressions that are vintage JoJo, allowing you to experience the JoJo universe with powerful imagery as if Hirohiko Araki''s manga had come to life.', 12, 'Bandai Namco Entertainment');
insert into softwareTab values (softwareIdN.nextval, 'SOULCALIBUR VI', to_date('2018.10.18', 'YYYY.MM.DD'), 59.99,  'Introducing the newest entry in the SOULCALIBUR series! Experience all-new gameplay mechanics with the most beautiful graphics the weapons-based fighting genre has ever seen!', 16, 'Bandai Namco Entertainment');
insert into softwareTab values (softwareIdN.nextval, 'SOULCALIBUR VI Season Pass', to_date('2018.10.18', 'YYYY.MM.DD'), 29.99,  'An affordable discount pass that includes 5 DLC packs.', 16, 'Bandai Namco Entertainment');
insert into softwareTab values (softwareIdN.nextval, 'SOULCALIBUR VI Season Pass 2', to_date('2019.11.25', 'YYYY.MM.DD'), 33.99,  'The second season pass for SOULCALIBUR VI features a collection of 8 DLC packs in one easy package.', 16, 'Bandai Namco Entertainment');
insert into softwareTab values (softwareIdN.nextval, 'TEKKEN 7', to_date('2017.06.01', 'YYYY.MM.DD'), 39.99,  'Discover the epic conclusion of the Mishima clan and unravel the reasons behind each step of their ceaseless fight. Powered by Unreal Engine 4, TEKKEN 7 features stunning story-driven cinematic battles and intense duels that can be enjoyed with friends and rivals alike through innovative fight mechanics. Love, Revenge, Pride. Everyone has a reason to fight. Values are what define us and make us human, regardless of our strengths and weaknesses. There are no wrong motivations, just the path we choose to take.', 16, 'Bandai Namco Entertainment');
insert into softwareTab values (softwareIdN.nextval, 'TEKKEN 7 Season Pass', to_date('2017.06.01', 'YYYY.MM.DD'), 24.99,  'Expand your fighter''s journey with the TEKKEN 7 Season Pass and gain access to stunning DLC packs at a discounted price. Challenge your skills, your friends and rivals with two additional playable characters, a new game mode and hundreds of additional costumes. As an exclusive gift for purchase, receive over 30 metallic costumes for your characters and shine in the Iron Fist Tournament!', 16, 'Bandai Namco Entertainment');
insert into softwareTab values (softwareIdN.nextval, 'TEKKEN 7 Season Pass 2', to_date('2018.09.05', 'YYYY.MM.DD'), 29.99,  'The second season pass for TEKKEN 7, featuring a collection of different downloadable content bundled together at a discounted price!', 16, 'Bandai Namco Entertainment');
insert into softwareTab values (softwareIdN.nextval, 'TEKKEN 7 Season Pass 3', to_date('2019.09.09', 'YYYY.MM.DD'), 24.99,  'The third season pass for TEKKEN 7 featuring a collection of different downloadable content bundled together at a discounted price!', 16, 'Bandai Namco Entertainment');
--50
insert into softwareTab values (softwareIdN.nextval, 'TEKKEN 7 Season Pass 4', to_date('2020.11.10', 'YYYY.MM.DD'), 19.99,  'The fourth season pass for TEKKEN 7, featuring a collection of different downloadable content bundled together at a discounted price!', 16, 'Bandai Namco Entertainment');
insert into softwareTab values (softwareIdN.nextval, 'DARK SOULS III', to_date('2016.04.11', 'YYYY.MM.DD'), 59.99,  'DARK SOULS™ III continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series. As fires fade and the world falls into ruin, journey into a universe filled with more colossal enemies and environments. Players will be immersed into a world of epic atmosphere and darkness through faster gameplay and amplified combat intensity. Fans and newcomers alike will get lost in the game hallmark rewarding gameplay and immersive graphics. Now only embers remain… Prepare yourself once more and Embrace The Darkness!', 16, 'Bandai Namco Entertainment');
insert into softwareTab values (softwareIdN.nextval, 'DARK SOULS III - The Ringed City', to_date('2017.03.27', 'YYYY.MM.DD'), 14.99,  'Fear not, the dark, ashen one. The Ringed City is the final DLC pack for Dark Souls III - an award-winning, genre-defining Golden Joystick Awards 2016 Game of the year RPG. Journey to the world''s end to search for the Ringed City and encounter new lands, new bosses, new enemies with new armor, magic and items. Experience the epic final chapter of a dark world that could only be created by the mind of Hidetaka Miyazaki. A New World. One Last Journey.', 16, 'Bandai Namco Entertainment');
insert into softwareTab values (softwareIdN.nextval, 'DARK SOULS III - Ashes of Ariandel', to_date('2016.10.24', 'YYYY.MM.DD'), 14.99,  'You, are the unkindled. As part of the Dark Souls™ III Season Pass, expand your Dark Souls™ III experience with the Ashes of Ariandel™ DLC pack. Journey to the snowy world of Ariandel and encounter new areas, bosses, enemies, weapons, armor set, magic spells and more. Will you accept the challenge and embrace the darkness once more?', 16, 'Bandai Namco Entertainment');
insert into softwareTab values (softwareIdN.nextval, 'DARK SOULS III - Season Pass', to_date('2016.06.01', 'YYYY.MM.DD'), 24.99,  'Winner of gamescom award 2015 "Best RPG" and over 35 E3 2015 Awards and Nominations, DARK SOULS™ III leads you once again into a challenging world of ruin and despair. Expand your DARK SOULS™ III experience with the Season Pass and gain access to 2 epic DLC packs at a discounted price. Challenge yourself with new maps, bosses, enemies and additional weapon and armor sets. Prepare yourself once more and embrace the darkness.', 16, 'Bandai Namco Entertainment');
insert into softwareTab values (softwareIdN.nextval, 'Fallout 3', to_date('2008.10.28', 'YYYY.MM.DD'), 9.99,  'Vault-Tec engineers have worked around the clock on an interactive reproduction of Wasteland life for you to enjoy from the comfort of your own vault. Included is an expansive world, unique combat, shockingly realistic visuals, tons of player choice, and an incredible cast of dynamic characters. Every minute is a fight for survival against the terrors of the outside world — radiation, Super Mutants, and hostile mutated creatures. From Vault-Tec, America''s First Choice in Post Nuclear Simulation.', 18, 'Bethesda Softworks');
insert into softwareTab values (softwareIdN.nextval, 'Fallout 3 - Operation Anchorage', to_date('2010.07.16', 'YYYY.MM.DD'), 4.99,  'Enter a military simulation and fight in one of the greatest battles of the Fallout universe - the liberation of Anchorage, Alaska from its Chinese Communist invaders.', 18, 'Bethesda Softworks');
insert into softwareTab values (softwareIdN.nextval, 'Fallout 3 - Broken Steel', to_date('2010.07.16', 'YYYY.MM.DD'), 4.99,  'You may have dealt the Enclave a serious blow at Project Purity, but their forces are still out there, and still pose a grave threat to the people and security of the Capital Wasteland. In Broken Steel, you''ll continue your current Fallout 3 character past the events of Project Purity, and work with the Brotherhood of Steel to eradicate the Enclave threat once and for all. You''ll travel to new locations like the Olney Powerworks, wield destructive new weapons like the Tesla Cannon, fight powerful new creatures like the Super Mutant Overlord, marvel at the destructive power of Liberty Prime, earn new Perks like the devastating Nuclear Anomaly… and play Fallout 3 all the way to level 30!', 18, 'Bethesda Softworks');
insert into softwareTab values (softwareIdN.nextval, 'Fallout 3 - The Pitt', to_date('2010.07.16', 'YYYY.MM.DD'), 4.99,  'Explore a sprawling settlement ravaged by time, neglect, nuclear radiation, and moral degradation. The Pitt is filled with morally grey choices, shady NPCs, new enemies, new weapons, and much more.', 18, 'Bethesda Softworks');
insert into softwareTab values (softwareIdN.nextval, 'Fallout 3 - Mothership Zeta', to_date('2010.07.16', 'YYYY.MM.DD'), 4.99,  'Defy hostile alien abductors and fight your way off of the massive Mothership Zeta, orbiting Earth miles above the Capital Wasteland. Mothership Zeta takes Fallout 3 in an entirely new direction - outer space. Meet new characters and join with them in a desperate bid to escape the Aliens'' clutches. To do so, you''ll wield powerful new weapons, like the Alien Atomizer, Alien Disintegrator, and Drone Cannon, and deck yourself out in brand new outfits, like the Gemini-Era Spacesuit and even Samurai Armor.', 18, 'Bethesda Softworks');
--60
insert into softwareTab values (softwareIdN.nextval, 'Fallout 3 - Point Lookout', to_date('2010.07.16', 'YYYY.MM.DD'), 4.99,  'Buy a ticket and hop onboard the Duchess Gambit, as Tobar the Ferryman takes you to the strange seaside town of Point Lookout. What secrets does the dilapidated boardwalk hold? Who lives in the sprawling mansion? Why is the Punga Fruit so important? And what horrors lie in the depths of the murky swamp? Point Lookout is the most open-ended DLC yet, and allows you to explore an entirely new and expansive gameplay area any way you''d like. A completely new quest line allows you uncover the town''s hidden secrets, and wield powerful new weapons like the Double-Barrel Shotgun against the swamp''s dangerous, and deformed, denizens. So venture to Point Lookout, if you dare. Just pray it''s not a one-way trip.', 18, 'Bethesda Softworks');
insert into softwareTab values (softwareIdN.nextval, 'Fallout New Vegas', to_date('2010.10.22', 'YYYY.MM.DD'), 9.99,  'Welcome to Vegas. New Vegas. It''s the kind of town where you dig your own grave prior to being shot in the head and left for dead…and that''s before things really get ugly. It''s a town of dreamers and desperados being torn apart by warring factions vying for complete control of this desert oasis. It''s a place where the right kind of person with the right kind of weaponry can really make a name for themselves, and make more than an enemy or two along the way. As you battle your way across the heat-blasted Mojave Wasteland, the colossal Hoover Dam, and the neon drenched Vegas Strip, you''ll be introduced to a colorful cast of characters, power-hungry factions, special weapons, mutated creatures and much more. Choose sides in the upcoming war or declare “winner takes all” and crown yourself the King of New Vegas in this follow-up to the 2008 videogame of the year, Fallout 3. Enjoy your stay.', 18, 'Bethesda Softworks');
insert into softwareTab values (softwareIdN.nextval, 'Fallout New Vegas - Dead Money', to_date('2011.02.21', 'YYYY.MM.DD'), 4.99,  'As the victim of a raw deal you must work alongside three other captured wastelanders to recover the legendary treasure of the Sierra Madre Casino. In Dead Money, your life hangs in the balance as you face new terrain, foes, and choices. It is up to you how you play your cards in the quest to survive.', 18, 'Bethesda Softworks');
insert into softwareTab values (softwareIdN.nextval, 'Fallout New Vegas - Honest hearts', to_date('2011.05.17', 'YYYY.MM.DD'), 4.99,  'An expedition into the unspoiled wilderness of Utah''s Zion National Park goes horribly wrong when your caravan is ambushed by a tribal raiding band. As you try to find a way back to the Mojave you become embroiled in a war between tribes and a conflict between a New Canaanite missionary and the mysterious Burned Man. The decisions you make will determine the fate of Zion.', 18, 'Bethesda Softworks');
insert into softwareTab values (softwareIdN.nextval, 'Fallout New Vegas - Old World Blues', to_date('2011.07.19', 'YYYY.MM.DD'), 4.99,  'The residents of the Mojave have long assumed the trackless wastes of the ''Big Empty'' are a no-man''s-land, a desolate stretch where no living thing can survive. In Old World Blues, you discover that it is anything but... After being transported to the Big MT research crater, you find you''re the only hope of saving the Think Tank - the strange group of post-human researchers who inhabit the facility. They enlist your aid to save them from their own experiments - experiments that have gone horribly out of control. As you explore the huge stretch of the Big MT crater and its many underground labs, you''ll confront strange mutated animals, battle terrifying new atomic robots, and discover a new home base to call your own. Recover all the weapons, armor, and tech of the Pre-War era and use them to help save all of Science!', 18, 'Bethesda Softworks');
insert into softwareTab values (softwareIdN.nextval, 'Fallout New Vegas - Lonesome World', to_date('2011.09.20', 'YYYY.MM.DD'), 4.99,  'In Lonesome Road you are contacted by the original Courier Six, a man by the name of Ulysses who refused to deliver the Platinum Chip at the start of Fallout: New Vegas. Ulysses promises the answer as to why he didn''t take the job,but only if you make one last journey into the hurricane-swept canyons of the Divide, a landscape torn apart by earthquakes and violent storms. It''s up to you whether you take the job or not. The road to the Divide is a long and treacherous one, and of the few to ever walk the road, none have ever returned. Is finding answers to your own past worth the risk? Bring all your gear, all your weapons, but leave your companions behind...this is one road you must walk alone.', 18, 'Bethesda Softworks');
insert into softwareTab values (softwareIdN.nextval, 'Fallout 76', to_date('2020.04.14', 'YYYY.MM.DD'), 39.99,  'Bethesda Game Studios, the award-winning creators of Skyrim and Fallout 4, welcome you to Fallout 76. Twenty-five years after the bombs fall, you and your fellow Vault Dwellers—chosen from the nation''s best and brightest - emerge into post-nuclear America on Reclamation Day, 2102. Play solo or join together as you explore, quest, build, and triumph against the wasteland''s greatest threats. Explore a vast wasteland, devastated by nuclear war, in this open-world multiplayer addition to the Fallout story. Experience the largest, most dynamic world ever created in the legendary Fallout universe.', 18, 'Bethesda Softworks');
insert into softwareTab values (softwareIdN.nextval, 'DOOM 3', to_date('2007.08.03', 'YYYY.MM.DD'), 4.99,  'A massive demonic invasion has overwhelmed the Union Aerospace Corporation''s (UAC) Mars Research Facility, leaving only chaos and horror in its wake. As one of only a few survivors, you must fight your way to hell and back against a horde of evil monsters. The path is dark and dangerous, but you''ll have an array of weapons--including a pistol, a chainsaw, grenades, and more--to use for protection.', 18, 'Bethesda Softworks');
insert into softwareTab values (softwareIdN.nextval, 'DOOM', to_date('2016.05.13', 'YYYY.MM.DD'), 19.99,  'You''ve come here for a reason. The Union Aerospace Corporation''s massive research facility on Mars is overwhelmed by fierce and powerful demons, and only one person stands between their world and ours. As the lone DOOM Marine, you''ve been activated to do one thing - kill them all.', 18, 'Bethesda Softworks');
insert into softwareTab values (softwareIdN.nextval, 'DOOM Eternal', to_date('2020.03.20', 'YYYY.MM.DD'), 39.99,  'Hell''s armies have invaded Earth. Become the Slayer in an epic single-player campaign to conquer demons across dimensions and stop the final destruction of humanity.', 18, 'Bethesda Softworks');
--70

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
insert into expandsTab values(4, 6);
insert into expandsTab values(4, 7);
insert into expandsTab values(4, 8);
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
insert into expandsTab values(47, 48);
insert into expandsTab values(47, 49);
insert into expandsTab values(47, 50);
insert into expandsTab values(47, 51);
insert into expandsTab values(52, 53);

insert into expandsTab values(52, 54);
insert into expandsTab values(52, 55);
insert into expandsTab values(56, 57);
insert into expandsTab values(56, 58);
insert into expandsTab values(56, 59);
insert into expandsTab values(56, 60);
insert into expandsTab values(56, 61);
insert into expandsTab values(62, 63);
insert into expandsTab values(62, 64);
insert into expandsTab values(62, 65);
insert into expandsTab values(62, 66);


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



