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
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill O&S with super Ornstein', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Create a Boss Weapon', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill a Boss with Consumeables only', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Upgrade a Weapon +7', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Collect 10 Rings', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill 3 Demons', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain 3 talismans', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Deflect a projectile with any Miracle', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Get cursed and heal the effect', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain 3 weapons from cutting enemy tails', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain Fav Ring and destroy it', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss while fat rolling', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Parry 5 silver knights in a row (no damage)', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Learn 3 gestures', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill 3 merchants', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Trade 3 items with Snuggly', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Place soul vessel', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain lightning spear miracle', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Enter the abyss', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain any of the 4 lord souls', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Summon 3 npc''s in bossfights', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill 4 demon titanite enemies', 1);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Hold 30k souls when defeating a boss', 1);

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
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete the game without using magic or items', 2);
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
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete the game (broken straight sword only)', 3);

/** DEMON SOULS (GAME-ID 4) **/
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Black Phantom NPC', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain the Pure Bladestone', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Find and enter a secret area', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire a unique armor set', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire a unique weapon', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Red Dragon', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Primeval Demon', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire a rare upgrade stone', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Collect all colorless Demon''s Souls', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat the Blue Dragon', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire a powerful spell or miracle', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Crystal Lizard', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover a hidden shortcut', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Collect all the rings', 4);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and use a powerful hidden weapon', 4);
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
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and defeat a hidden optional boss', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss using only your starting weapon', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain a Blood Gem of the highest rarity', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss without taking damage', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and use a hidden gesture', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss without summoning help', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and read an important lore note', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain and upgrade a weapon to +10', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire a Blood Rock', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss without leveling up', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete an area without using lanterns', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and defeat a wandering boss', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss while wearing no armor', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and use a unique Caryll Rune', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss using only your fists', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and use a hidden consumable item', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete an area without using Hunter Tools', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and defeat a Lost Child of Antiquity', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss using only Molotov Cocktails', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and defeat a boss in a Chalice Dungeon', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete an without backstabbing any enemies', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss with the help of an NPC summon', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and use a hidden item crafting recipe', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete an area without using any special items', 5);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Discover and defeat a Lost Child of Antiquity', 5);

/** ELDEN RING (GAME-ID 6) **/
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill a Boss with Fists only', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete 5 Evergoals', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat 7 NPCs', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Raid 2 Caravans', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete 3 dungeons', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill a boss without taking damage', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Use a Spirit Ashe to defeat a boss only', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a boss using only magic or spells', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete an area (no healing)', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Find and unlock a secret passage', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete an area without dying', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Rennala while wearing no armor', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Godrick without taking damage', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill 2 Black Knife Assassins', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill Leonine Missbegotten', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill 5 Bosses in Caelid', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill 8 Bosses in Limgrave', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill 3 Bell Bearing Hunters', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill a boss on Torrent the whole fight', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill a Fallingstar Beast', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill a Godskin Apostle', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire 2 legendary armaments', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill 5 bosses with "tree" in their name', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Sacred Flask +7', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill 3 Tibia Mariners', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill a Dragonkin Soldier', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill 3 Nights Cavalry', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill Royal Revenant (Kingsrealm Ruins)', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill a Magma Wyrm Boss', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Smithing Stone +12', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire 8 different Talismans', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Finish off a boss with the explosive physick', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire both Scarseal Talismans', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire Fingerslayer Blade', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill A red Wolf Boss', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Use AoW Lightning Ram to kill 10 sheep', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire 10 Physick Flask Tears', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Restore Radahn''s Great Rune', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Restore Godricks Great Rune', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill Wormface', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill 6 bosses in Liurnia', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Take Rya''s hand to Volcano Manor', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill Godrick and Godfrey', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Somber Weapon +9', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Acquire 10 cracked pots', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Return Thop''s Academy key', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Kill 3 duo fight bosses', 6);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Godrick while summoning Nepheli Loux', 6);

/** SEKIRO (GAME-ID 7) **/
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('ROBERTOOO!', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Guardian Ape', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Guardian Ape and his Wife', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Gyoubu Oniwa', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Lady Emma, the Gentle Blade', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Folding Screen Monkeys', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Great Serpent', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Owl (Father)', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Isshin (Shura Ending)', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Demon of Hatred', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Sword Saint Isshin  (Immortal Severance)', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat True Corrupted Monk', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Divine Dragon', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat O''rin of the Water', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat 2 Drunkards', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat 2 Ogres', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat 2 Headless', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat 2 Shichimen Warrior', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat 3 Ministry Ninjas', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat 3 Generals', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat 2 Seven Spears', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Seven Spear without using mikri counter', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat Genichiro (first encounter)', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Boss with Parries only', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Boss without Parrying', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Boss without using dodge', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Boss with prostetic tools only', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Boss with kicks only', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Boss without taking damage', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Defeat a Shinobi Hunter without using mikri counter', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain all Prostetic upgrades', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain Ashina Esoteric Text', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Obtain Senpou Esoteric Text', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Find 5 Prayer Beads', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Find 10 Prayer Beads', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Find 15 Prayer Beads', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Find 20 Prayer Beads', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Find 3 Gourd Seeds', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Find 5 Gourd Seeds', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Find 8 Gourd Seeds', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete game without using resurrection', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete game without using items', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete game without upgrading (10 Vitality, 1 AP)', 7);
INSERT INTO ALL_CHALLENGES (challenge, gameID) VALUES ('Complete a Sidequest', 7);
