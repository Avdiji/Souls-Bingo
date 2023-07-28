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
    gameID INT DEFAULT 1,
    active BOOLEAN NOT NULL DEFAULT true
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
    color VARCHAR(255)
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
/** DARK SOULS III (GAME-ID 3) **/
/** DEMON SOULS (GAME-ID 4) **/
/** BLOODBORNE (GAME-ID 5) **/
/** ELDEN RING (GAME-ID 6) **/
/** SEKIRO (GAME-ID 7) **/