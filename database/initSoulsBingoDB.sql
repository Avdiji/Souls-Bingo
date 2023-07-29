/** Table that contains all Challenges **/
CREATE TABLE IF NOT EXISTS ALL_CHALLENGES (
    id SERIAL PRIMARY KEY,
    challenge VARCHAR(255) NOT NULL,
    gameID INT
);

/** Table that contains all Rooms **/
CREATE TABLE IF NOT EXISTS ROOMS(
    id SERIAL PRIMARY KEY,
    roomName VARCHAR(255) NOT NULL,
    roomPW VARCHAR(255) NOT NULL,
    gameID INT DEFAULT 1
);

/** Table that contains all Users **/
CREATE TABLE IF NOT EXISTS USERS(
    id VARCHAR(255) PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    active BOOLEAN NOT NULL DEFAULT true
);

/** Room-Users **/
CREATE TABLE IF NOT EXISTS ROOM_USERS(
    id SERIAL PRIMARY KEY,
    roomID INT REFERENCES ROOMS(id),
    userID VARCHAR(255) REFERENCES USERS(id)
);

/** Room-Challenges **/
CREATE TABLE IF NOT EXISTS ROOM_CHALLENGES(
    id SERIAL PRIMARY KEY,
    roomID INT REFERENCES ROOMS(id),
    challenge VARCHAR(255) NOT NULL,
    color VARCHAR(255) default '_'
);

/** DARK SOULS I (GAME-ID 1) **/
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain Great Scythe', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain Havels Set', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Murder Siegmeyer', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Invade Lautrec at Anor Londo', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain Crest of Artorias', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill Stray Demon', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Fully Kindle a bonfire', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain Divine Ember', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain Power Within', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain Great Magic Barrier', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Murder Giant Blacksmith', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain Skull Lantern', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain Dark Ember', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Summon Solaire in Anor Londo', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Take Binoculars as gift', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain 10 Cracked Red Eye Orbs', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill All 3 Giants in Sens', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill Gaping Dragon', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('150k souls', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain Velkas Rapier', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Estus +3', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Free Logan', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill 3 Black Knights', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill Queelag with Spells only', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill 7 NPCs', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Reach Anor Londo', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill Gargoyles with a +0 Weapon', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill Queelag with Spells only', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill O&S with super Ornstein', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Create a Boss Weapon', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill a Boss with Consumeables only', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Upgrade a Weapon +7', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Collect 10 Rings', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill 3 Demons', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Join the Dragon Covenant in the hollow', 1);

/** DARK SOULS II (GAME-ID 2) **/
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Last Giant', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Pursuer', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Flexile Sentry', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat The Rotten', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Iron Keep Old Iron King', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat The Duke''s Dear Freja', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Royal Rat Vanguard', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Throne Watcher and Throne Defender', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Nashandra', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Darklurker', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Fume Knight', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Sir Alonne', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Smelter Demon', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Blue Smelter Demon', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Lud and Zallen, the King''s Pets', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Sinh, the Slumbering Dragon', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Darklurker', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Ancient Dragon', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Vendrick', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat King Vendrick without Giant Souls', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat all four Great Old Ones', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat all optional bosses', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat all invaders', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Collect all Estus Flask Shards', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Collect all Sublime Bone Dusts', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Collect all Primal Bonfires', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat all bosses', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete the game without using any shields', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete the game without leveling up', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat all DLC bosses', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire all Estus Flask Upgrades', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire all Ashen Estus Flask Upgrades', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire all unique armor sets', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire all unique weapons', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire all unique shields', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire all unique spells', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire all unique rings', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete the game without using any magic or items', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete the game with no armor', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete the game with no deaths', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Use only fists to defeat a boss', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Collect 5 Estus Flask Shards', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Collect 3 Sublime Bone Dusts', 2);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Collect all Primal Bonfires', 2);

/** DARK SOULS III (GAME-ID 3) **/
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Upgrade a weapon to +10', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Infuse a weapon with Dark', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Infuse a weapon with Chaos', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Infuse a weapon with fire', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill all 3 Pontiff beasts', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire 10 spells', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire mortician''s Ashes', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Dragon Chaser''s Ashes', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Dreamchaser''s Ashes', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Eastener''s Ashes', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Get Astora Greatsword', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Get Chaos Blade', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Get Eyes of a firekeeper', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Get Firekeeper Soul', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Unlock Karla as a merchant', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Find Braille Divine Tome of Carim', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Find Izalith Pyromancy Tome', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Find Quelana Pyromancy Tome', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Get the Lord of Hollows Ending', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Get the Usurpation of Fire Ending', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Link the First Flame', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Enter NG+', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill a Boss only using your Fists', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill a Boss only using consumables', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill a Boss using a Boss Weapon', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Level Strength to 40', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Level Luck to 40', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Level Dexterity to 40', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Level Vitality to 40', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Wear the full Wolf Knight Set', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Wear the full Dragonslayer Set', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Champion''s Gravetender', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Sister Friede', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Demon Prince', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Darkeater Midir', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Slave Knight Gael', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire All Pyromancies', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire All Sorceries', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire All Miracles', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire All Rings', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire All Estus Flask Upgrades', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Nameless King', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Soul of Cinder with a SL1 character', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat all invading NPCs', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat all 5 Lords of Cinder', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss while wearing no armor', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire all Titanite Slabs', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete the game without using any Ember', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire all Estus Soup variations', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat every unique enemy in the game', 3);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete the game using a broken straight sword only', 3);

/** DEMON SOULS (GAME-ID 4) **/
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Black Phantom NPC', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain the Pure Bladestone', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Reach Pure White World Tendency in all worlds', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Reach Pure Black World Tendency in all worlds', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat an invader in PvP combat', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Find and enter a secret area', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire a unique armor set', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire a unique weapon', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Red Dragon', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Successfully parry and riposte a tough enemy', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Primeval Demon', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire a rare upgrade stone', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Collect all colorless Demon''s Souls', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat the Blue Dragon', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat the Red Eyed Knight in Boletarian Palace', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire a powerful spell or miracle', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Crystal Lizard', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover a hidden shortcut', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Collect all the rings', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and use a powerful hidden weapon', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat the Fool''s Idol without killing any clones', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover a developer message', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss while wearing no armor', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss using only consumable items', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover a hidden NPC or merchant', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete a level with Pure White World Tendency', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete a level with Pure Black World Tendency', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat the Dragon God without taking damage', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain the Friend''s Ring', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain the Foe''s Ring', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete a level using only bows or crossbows', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire a unique catalyst or talisman', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss using only magic or miracles', 4);

/** BLOODBORNE (GAME-ID 5) **/
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Father Gascoigne', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Vicar Amelia', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Shadows of Yharnam', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Rom, the Vacuous Spider', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat The One Reborn', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Micolash, Host of the Nightmare', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Mergo''s Wet Nurse', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Ebrietas, Daughter of the Cosmos', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Martyr Logarius', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Celestial Emissary', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Amygdala', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Blood-starved Beast', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Witch of Hemwick', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Darkbeast Paarl', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Cleric Beast', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete a level without using any blood vials', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and defeat a hidden optional boss', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss using only your starting weapon', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain a Blood Gem of the highest rarity', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss without taking damage', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete a level without using firearms or ranged attacks', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and use a hidden gesture', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss without summoning help', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and read an important lore note', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss using only parries and visceral attacks', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain and upgrade a weapon to +10', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire a Blood Rock', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and defeat an invader in PvP combat', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss without leveling up', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and use a hidden weapon transformation', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete a level without using lanterns', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and defeat a wandering boss', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss while wearing no armor', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and use a unique Caryll Rune', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss using only your fists', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and read the final entry of a Hunter''s Journal', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss with a co-op partner', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and use a hidden consumable item', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete a level without using Hunter Tools', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and defeat a Lost Child of Antiquity', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss while wearing attire from a different covenant', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and use a hidden Caryll Rune combination', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss using only Molotov Cocktails', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and read a note with hidden insight', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss with a visceral attack during a specific attack animation', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and defeat a boss in a Chalice Dungeon', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete a level without backstabbing any enemies', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and use a hidden gesture', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss with the help of an NPC summon', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and use a hidden item crafting recipe', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete a level without using any special items', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and defeat a Lost Child of Antiquity', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss while wearing attire from a different covenant', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and use a hidden Caryll Rune combination', 5);


/** ELDEN RING (GAME-ID 6) **/
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Godrick', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Malenia', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Morgott', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Margit', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Rennala', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Radhan', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Godskin Duo', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Fire Giant', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Mohg', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Horah Loux', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete the Game', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Max out a Weapon', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill a Boss with Fists only', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete 1 Evergoal', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete 3 Evergoals', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Spirit Ashe +1 summon', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Spirit Ashe +2 summon', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat 5 NPCs', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat 7 NPCs', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Raid 2 Caravans', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Raid a Caravan', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete 5 dungeons', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete 7 dungeons', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Weapon +3', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Weapon +5', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill a boss without taking damage', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete an area with no armor equipped', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Use a Spirit Ashe to defeat a boss', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss using only magic or spells', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete an level without using any healing items', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat all members of the Godskin Duo', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Find and unlock a secret passage', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Morgott using only ranged attacks', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete an area without dying', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Rennala while wearing no armor', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Commander O''Neil using only melee attacks', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Find and interact with a mysterious NPC', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete 10 dungeons', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Weapon +7', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Spirit Ashe +3 summon', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Spirit Ashe +4 summon', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat 10 NPCs', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete 8 dungeons', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Weapon +10', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete 12 dungeons', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Mohg using only melee attacks', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Spirit Ashe +5 summon', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Horah Loux using only ranged attacks', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Godrick without taking damage', 6);


/** SEKIRO (GAME-ID 7) **/
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat General Naomori Kawarada', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Shinobi Esoteric Text', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Lady Butterfly', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Gourd Seed', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Gyoubu Oniwa', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Flame Vent Prosthetic Tool', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Blazing Bull', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Hidden Temple Key', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Genichiro Ashina', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Ashina Castle Gatehouse Key', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Guardian Ape', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Lotus of the Palace', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Corrupted Monk', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Shelter Stone', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Folding Screen Monkeys', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Puppeteer Ninjutsu', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Great Shinobi Owl', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Sabimaru Prosthetic Tool', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Divine Dragon', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Divine Abduction Ninjutsu', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Demon of Hatred', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Malcontent Ring', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Emma, the Gentle Blade', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Mortal Blade', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Isshin Ashina (Shura Ending)', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Headless Ape (second encounter)', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Lazulite Sacred Flame Prosthetic Tool', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Owl (Father)', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Bestowal Ninjutsu', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Great Serpent (second encounter)', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Mibu Breathing Technique', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat True Corrupted Monk', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Malcontent Ring +1', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Divine Dragon', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Dragon''s Homecoming', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Great Shinobi Owl (Hirata Estate)', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Father''s Bell Charm', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Corrupted Monk (Fountainhead Palace)', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Great Sakura Dance', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Isshin, the Sword Saint', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Emma''s Medicine: Potency', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Demon of Hatred', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Purple Fume Spark', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Owl (Father) without taking damage', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Aromatic Flower', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Sword Saint Isshin without healing', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Holy Chapter: Infested', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat all Headless', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Dragonspring Sake', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat all Shichimen Warriors', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Malcontent Ring +2', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Mask Fragment: Dragon', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire One Mind', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Sakura Dance', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Mushin Esoteric Text', 7);

