CREATE TABLE Races (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Factions (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    raceId INTEGER REFERENCES Races(id) NOT NULL
);

CREATE TABLE Unit_Type (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Unit (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    tier INTEGER NOT NULL,
    unitTypeId INTEGER REFERENCES Unit_Type(id) NOT NULL,
);

CREATE TABLE UnitRace(
    id SERIAL PRIMARY KEY,
    unitId INTEGER REFERENCES Unit(id) NOT NULL,
    raceId INTEGER REFERENCES Races(id) NOT NULL
);


-- Races
INSERT INTO Races (name) VALUES ("Beastmen");
INSERT INTO Races (name) VALUES ("Bretonnia");
INSERT INTO Races (name) VALUES ("Chaos Dwarfs");
INSERT INTO Races (name) VALUES ("Daemons of Chaos");
INSERT INTO Races (name) VALUES ("Dark Elves");
INSERT INTO Races (name) VALUES ("Dwarfs");
INSERT INTO Races (name) VALUES ("Grand Cathay");
INSERT INTO Races (name) VALUES ("Greenskins");
INSERT INTO Races (name) VALUES ("High Elves");
INSERT INTO Races (name) VALUES ("Khorne");
INSERT INTO Races (name) VALUES ("Kislev");
INSERT INTO Races (name) VALUES ("Lizardmen");
INSERT INTO Races (name) VALUES ("Norsca");
INSERT INTO Races (name) VALUES ("Nurgle");
INSERT INTO Races (name) VALUES ("Ogre Kingdoms");
INSERT INTO Races (name) VALUES ("Skaven");
INSERT INTO Races (name) VALUES ("Slaanesh");
INSERT INTO Races (name) VALUES ("The Empire");
INSERT INTO Races (name) VALUES ("Tomb Kings");
INSERT INTO Races (name) VALUES ("Tzeentch");
INSERT INTO Races (name) VALUES ("Undead Legions");
INSERT INTO Races (name) VALUES ("Vampire Coast");
INSERT INTO Races (name) VALUES ("Vampire Counts");
INSERT INTO Races (name) VALUES ("Warriors of Chaos");
INSERT INTO Races (name) VALUES ("Wood Elves");


-- Factions
INSERT INTO Factions (name, raceId) SELECT "Warherd of the One-Eye", Races.id FROM Races WHERE Races.name = "Beastmen";
INSERT INTO Factions (name, raceId) SELECT "Harbinger of Disaster", Races.id FROM Races WHERE Races.name = "Beastmen";
INSERT INTO Factions (name, raceId) SELECT "Warherd of the Shadowgave", Races.id FROM Races WHERE Races.name = "Beastmen";
INSERT INTO Factions (name, raceId) SELECT "Slaughterhorn Tribe", Races.id FROM Races WHERE Races.name = "Beastmen";
INSERT INTO Factions (name, raceId) SELECT "Couronne", Races.id FROM Races WHERE Races.name = "Bretonnia";
INSERT INTO Factions (name, raceId) SELECT "Carcassonne", Races.id FROM Races WHERE Races.name = "Bretonnia";
INSERT INTO Factions (name, raceId) SELECT "Bordeleaux Errant", Races.id FROM Races WHERE Races.name = "Bretonnia";
INSERT INTO Factions (name, raceId) SELECT "Chevaliers de Lyonesse", Races.id FROM Races WHERE Races.name = "Bretonnia";
INSERT INTO Factions (name, raceId) SELECT "Disciples of Hashut", Races.id FROM Races WHERE Races.name = "Chaos Dwarfs";
INSERT INTO Factions (name, raceId) SELECT "The Legion of Azgorh", Races.id FROM Races WHERE Races.name = "Chaos Dwarfs";
INSERT INTO Factions (name, raceId) SELECT "The Warhost of Zharr", Races.id FROM Races WHERE Races.name = "Chaos Dwarfs";
INSERT INTO Factions (name, raceId) SELECT "Legion of Chaos", Races.id FROM Races WHERE Races.name = "Daemons of Chaos";
INSERT INTO Factions (name, raceId) SELECT "Shadow Legion", Races.id FROM Races WHERE Races.name = "Daemons of Chaos";
INSERT INTO Factions (name, raceId) SELECT "Naggarond", Races.id FROM Races WHERE Races.name = "Dark Elves";
INSERT INTO Factions (name, raceId) SELECT "Cult of Pleasure", Races.id FROM Races WHERE Races.name = "Dark Elves";
INSERT INTO Factions (name, raceId) SELECT "Har Ganeth", Races.id FROM Races WHERE Races.name = "Dark Elves";
INSERT INTO Factions (name, raceId) SELECT "The Blessed Dread", Races.id FROM Races WHERE Races.name = "Dark Elves";
INSERT INTO Factions (name, raceId) SELECT "Hag Graef", Races.id FROM Races WHERE Races.name = "Dark Elves";
INSERT INTO Factions (name, raceId) SELECT "The Thousand Maws", Races.id FROM Races WHERE Races.name = "Dark Elves";
INSERT INTO Factions (name, raceId) SELECT "Karaz-a-Karak", Races.id FROM Races WHERE Races.name = "Dwarfs";
INSERT INTO Factions (name, raceId) SELECT "Karak Kadrin", Races.id FROM Races WHERE Races.name = "Dwarfs";
INSERT INTO Factions (name, raceId) SELECT "Clan Angrund", Races.id FROM Races WHERE Races.name = "Dwarfs";
INSERT INTO Factions (name, raceId) SELECT "The Ancestral Throng", Races.id FROM Races WHERE Races.name = "Dwarfs";
INSERT INTO Factions (name, raceId) SELECT "Ironbrow's Expedition", Races.id FROM Races WHERE Races.name = "Dwarfs";
INSERT INTO Factions (name, raceId) SELECT "Masters of Innovation", Races.id FROM Races WHERE Races.name = "Dwarfs";
INSERT INTO Factions (name, raceId) SELECT "The Northern Provinces", Races.id FROM Races WHERE Races.name = "Grand Cathay";
INSERT INTO Factions (name, raceId) SELECT "The Western Provinces", Races.id FROM Races WHERE Races.name = "Grand Cathay";
INSERT INTO Factions (name, raceId) SELECT "The Jade Court", Races.id FROM Races WHERE Races.name = "Grand Cathay";
INSERT INTO Factions (name, raceId) SELECT "Grimgor's 'Ardboyz", Races.id FROM Races WHERE Races.name = "Greenskins";
INSERT INTO Factions (name, raceId) SELECT "Bonerattlaz", Races.id FROM Races WHERE Races.name = "Greenskins";
INSERT INTO Factions (name, raceId) SELECT "Crooked Moon", Races.id FROM Races WHERE Races.name = "Greenskins";
INSERT INTO Factions (name, raceId) SELECT "The Bloody Handz", Races.id FROM Races WHERE Races.name = "Greenskins";
INSERT INTO Factions (name, raceId) SELECT "Broken Axe", Races.id FROM Races WHERE Races.name = "Greenskins";
INSERT INTO Factions (name, raceId) SELECT "Ironclaw Orcs", Races.id FROM Races WHERE Races.name = "Greenskins";
INSERT INTO Factions (name, raceId) SELECT "Eataine", Races.id FROM Races WHERE Races.name = "High Elves";
INSERT INTO Factions (name, raceId) SELECT "Order of Loremasters", Races.id FROM Races WHERE Races.name = "High Elves";
INSERT INTO Factions (name, raceId) SELECT "Avelorn", Races.id FROM Races WHERE Races.name = "High Elves";
INSERT INTO Factions (name, raceId) SELECT "Nagarythe", Races.id FROM Races WHERE Races.name = "High Elves";
INSERT INTO Factions (name, raceId) SELECT "Yvresse", Races.id FROM Races WHERE Races.name = "High Elves";
INSERT INTO Factions (name, raceId) SELECT "Knights of Caledor", Races.id FROM Races WHERE Races.name = "High Elves";
INSERT INTO Factions (name, raceId) SELECT "High Elf Sea Patrol", Races.id FROM Races WHERE Races.name = "High Elves";
INSERT INTO Factions (name, raceId) SELECT "Exiles of Khorne", Races.id FROM Races WHERE Races.name = "Khorne";
INSERT INTO Factions (name, raceId) SELECT "Legion of the Gorequeen", Races.id FROM Races WHERE Races.name = "Khorne";
INSERT INTO Factions (name, raceId) SELECT "Blooded Wanderers", Races.id FROM Races WHERE Races.name = "Khorne";
INSERT INTO Factions (name, raceId) SELECT "Challengers of Khorne", Races.id FROM Races WHERE Races.name = "Khorne";
INSERT INTO Factions (name, raceId) SELECT "The Ice Court", Races.id FROM Races WHERE Races.name = "Kislev";
INSERT INTO Factions (name, raceId) SELECT "The Great Orthodoxy", Races.id FROM Races WHERE Races.name = "Kislev";
INSERT INTO Factions (name, raceId) SELECT "Ursun Revivalists", Races.id FROM Races WHERE Races.name = "Kislev";
INSERT INTO Factions (name, raceId) SELECT "Daughters of the Forest", Races.id FROM Races WHERE Races.name = "Kislev";
INSERT INTO Factions (name, raceId) SELECT "Hexoatl", Races.id FROM Races WHERE Races.name = "Lizardmen";
INSERT INTO Factions (name, raceId) SELECT "Last Defenders", Races.id FROM Races WHERE Races.name = "Lizardmen";
INSERT INTO Factions (name, raceId) SELECT "Tlaqua", Races.id FROM Races WHERE Races.name = "Lizardmen";
INSERT INTO Factions (name, raceId) SELECT "Cult of Sotek", Races.id FROM Races WHERE Races.name = "Lizardmen";
INSERT INTO Factions (name, raceId) SELECT "Itza", Races.id FROM Races WHERE Races.name = "Lizardmen";
INSERT INTO Factions (name, raceId) SELECT "Spirit of the Jungle", Races.id FROM Races WHERE Races.name = "Lizardmen";
INSERT INTO Factions (name, raceId) SELECT "Ghosts of Pahuax", Races.id FROM Races WHERE Races.name = "Lizardmen";
INSERT INTO Factions (name, raceId) SELECT "World Walkers", Races.id FROM Races WHERE Races.name = "Norsca";
INSERT INTO Factions (name, raceId) SELECT "Wintertooth", Races.id FROM Races WHERE Races.name = "Norsca";
INSERT INTO Factions (name, raceId) SELECT "Dolgan", Races.id FROM Races WHERE Races.name = "Norsca";
INSERT INTO Factions (name, raceId) SELECT "Poxmakers of Nurgle", Races.id FROM Races WHERE Races.name = "Nurgle";
INSERT INTO Factions (name, raceId) SELECT "The Fecundites", Races.id FROM Races WHERE Races.name = "Nurgle";
INSERT INTO Factions (name, raceId) SELECT "The Maggot Host", Races.id FROM Races WHERE Races.name = "Nurgle";
INSERT INTO Factions (name, raceId) SELECT "Tallymen of Pestilence", Races.id FROM Races WHERE Races.name = "Nurgle";
INSERT INTO Factions (name, raceId) SELECT "Goldtooth", Races.id FROM Races WHERE Races.name = "Ogre Kingdoms";
INSERT INTO Factions (name, raceId) SELECT "Disciples of the Maw", Races.id FROM Races WHERE Races.name = "Ogre Kingdoms";
INSERT INTO Factions (name, raceId) SELECT "The Maneaters", Races.id FROM Races WHERE Races.name = "Ogre Kingdoms";
INSERT INTO Factions (name, raceId) SELECT "Clan Mors", Races.id FROM Races WHERE Races.name = "Skaven";
INSERT INTO Factions (name, raceId) SELECT "Clan Pestilens", Races.id FROM Races WHERE Races.name = "Skaven";
INSERT INTO Factions (name, raceId) SELECT "Clan Rictus", Races.id FROM Races WHERE Races.name = "Skaven";
INSERT INTO Factions (name, raceId) SELECT "Clan Skryre", Races.id FROM Races WHERE Races.name = "Skaven";
INSERT INTO Factions (name, raceId) SELECT "Clan Eshin", Races.id FROM Races WHERE Races.name = "Skaven";
INSERT INTO Factions (name, raceId) SELECT "Clan Moulder", Races.id FROM Races WHERE Races.name = "Skaven";
INSERT INTO Factions (name, raceId) SELECT "Seducers of Slaanesh", Races.id FROM Races WHERE Races.name = "Slaanesh";
INSERT INTO Factions (name, raceId) SELECT "The Ecstatic Legions", Races.id FROM Races WHERE Races.name = "Slaanesh";
INSERT INTO Factions (name, raceId) SELECT "The Decadent Host", Races.id FROM Races WHERE Races.name = "Slaanesh";
INSERT INTO Factions (name, raceId) SELECT "The Tormentors", Races.id FROM Races WHERE Races.name = "Slaanesh";
INSERT INTO Factions (name, raceId) SELECT "The Accursed Troupe", Races.id FROM Races WHERE Races.name = "Slaanesh";
INSERT INTO Factions (name, raceId) SELECT "Reikland", Races.id FROM Races WHERE Races.name = "The Empire";
INSERT INTO Factions (name, raceId) SELECT "The Golden Order", Races.id FROM Races WHERE Races.name = "The Empire";
INSERT INTO Factions (name, raceId) SELECT "Cult of Sigmar", Races.id FROM Races WHERE Races.name = "The Empire";
INSERT INTO Factions (name, raceId) SELECT "The Huntsmarshal's Expedition", Races.id FROM Races WHERE Races.name = "The Empire";
INSERT INTO Factions (name, raceId) SELECT "Wissenland & Nuln", Races.id FROM Races WHERE Races.name = "The Empire";
INSERT INTO Factions (name, raceId) SELECT "Khemri", Races.id FROM Races WHERE Races.name = "Tomb Kings";
INSERT INTO Factions (name, raceId) SELECT "Followers of Nagash", Races.id FROM Races WHERE Races.name = "Tomb Kings";
INSERT INTO Factions (name, raceId) SELECT "Court of Lybaras", Races.id FROM Races WHERE Races.name = "Tomb Kings";
INSERT INTO Factions (name, raceId) SELECT "Exiles of Nehek", Races.id FROM Races WHERE Races.name = "Tomb Kings";
INSERT INTO Factions (name, raceId) SELECT "Oracles of Tzeentch", Races.id FROM Races WHERE Races.name = "Tzeentch";
INSERT INTO Factions (name, raceId) SELECT "Puppets of Misrule", Races.id FROM Races WHERE Races.name = "Tzeentch";
INSERT INTO Factions (name, raceId) SELECT "The Deceivers", Races.id FROM Races WHERE Races.name = "Tzeentch";
INSERT INTO Factions (name, raceId) SELECT "The Awakened", Races.id FROM Races WHERE Races.name = "Vampire Coast";
INSERT INTO Factions (name, raceId) SELECT "The Dreadfleet", Races.id FROM Races WHERE Races.name = "Vampire Coast";
INSERT INTO Factions (name, raceId) SELECT "Pirates of Sartosa", Races.id FROM Races WHERE Races.name = "Vampire Coast";
INSERT INTO Factions (name, raceId) SELECT "The Drowned", Races.id FROM Races WHERE Races.name = "Vampire Coast";
INSERT INTO Factions (name, raceId) SELECT "The Drakenhof Conclave", Races.id FROM Races WHERE Races.name = "Vampire Counts";
INSERT INTO Factions (name, raceId) SELECT "The Barrow Legion", Races.id FROM Races WHERE Races.name = "Vampire Counts";
INSERT INTO Factions (name, raceId) SELECT "Caravan of Blue Roses", Races.id FROM Races WHERE Races.name = "Vampire Counts";
INSERT INTO Factions (name, raceId) SELECT "Sylvania", Races.id FROM Races WHERE Races.name = "Vampire Counts";
INSERT INTO Factions (name, raceId) SELECT "Warhost of the Apocalypse", Races.id FROM Races WHERE Races.name = "Warriors of Chaos";
INSERT INTO Factions (name, raceId) SELECT "Heralds of the Tempest", Races.id FROM Races WHERE Races.name = "Warriors of Chaos";
INSERT INTO Factions (name, raceId) SELECT "Talsyn", Races.id FROM Races WHERE Races.name = "Wood Elves";
INSERT INTO Factions (name, raceId) SELECT "Argwylon", Races.id FROM Races WHERE Races.name = "Wood Elves";
INSERT INTO Factions (name, raceId) SELECT "Wargrove of Woe", Races.id FROM Races WHERE Races.name = "Wood Elves";
INSERT INTO Factions (name, raceId) SELECT "Heralds of Ariel", Races.id FROM Races WHERE Races.name = "Wood Elves";