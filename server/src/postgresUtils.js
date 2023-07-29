
//////////////////////////////////////////////////////////////////////////
// INSERTION
//////////////////////////////////////////////////////////////////////////
/** function creates a new Room **/
async function createNewRoom(client, roomName, roomPW) {
  const insertIntoRooms =
    "INSERT INTO ROOMS (roomName, roomPW) VALUES ($1,$2) RETURNING *";
  const rooms = await client.query(insertIntoRooms, [roomName, roomPW]);
}

/** function add a new User to users */
async function createUser(client, userID, username) {
  const insertIntoUsers =
    "INSERT INTO USERS (id,username) VALUES ($1,$2) RETURNING *";
  const users = await client.query(insertIntoUsers, [userID, username]);
}

/** function adds a User to a Room **/
async function addRoomUser(client, roomID, userID) {
  const query = "INSERT INTO ROOM_USERS (roomID, userID) VALUES ($1, $2) RETURNING *";
  const room_users = await client.query(query, [roomID, userID]);
}

/** function adds 25 initialChallenges To the Room with the given roomID (color null) **/
async function addInitialChallengesToRoom(client, roomID) {
  const gameID = await getGameIdOfRoomWithRoomId(client, roomID);
  const challenges = await getRandomChallengesWithGameID(client, gameID);

  var query = "";

  for (i = 0; i < 25; i++) {
    query = "INSERT INTO ROOM_CHALLENGES (roomID, challenge) VALUES ($1,$2) RETURNING *";
    const result = await client.query(query, [roomID, challenges[i]]);
  }
}
//////////////////////////////////////////////////////////////////////////
// INSERTION
//////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////
// DELETION
//////////////////////////////////////////////////////////////////////////

async function deleteChallengesFromRoom(client, roomID){
  const query = "DELETE FROM ROOM_CHALLENGES WHERE roomID = $1";
  await client.query(query, [roomID]);
}

async function deleteRoomFromRoomUsers(client, roomID){
  const query = "DELETE FROM ROOM_USERS WHERE roomID=$1";
  await client.query(query, [roomID]);
}

async function deleteRoomWithID(client, roomID){
  const query = "DELETE FROM ROOMS WHERE id=$1";
  await client.query(query, [roomID]);
}

async function deleteInactiveUsers(client){
  const query = "DELETE FROM USERS WHERE active=$1";
  await client.query(query, [false]);
}
//////////////////////////////////////////////////////////////////////////
// DELETION
//////////////////////////////////////////////////////////////////////////



//////////////////////////////////////////////////////////////////////////
// UPDATE
//////////////////////////////////////////////////////////////////////////
async function updateUsernameOfUserWithID(client, userID, username) {
  const query = "UPDATE USERS SET username = $1 WHERE id=$2";
  await client.query(query, [username, userID]);
}

async function updateUserActive(client, userID, activeValue) {
  const query = "UPDATE USERS SET active = $1 WHERE id=$2";
  await client.query(query, [activeValue, userID]);
}

async function updateColorOfChallengeInRoom(client, roomID, challenge, updatedColor) {
  const query = "UPDATE ROOM_CHALLENGES SET color=$1 WHERE roomID=$2 AND challenge=$3";
  await client.query(query, [updatedColor, roomID, challenge]);
}

async function updateGameIdOfRoom(client, roomID, gameID){
  const query = "UPDATE ROOMS SET gameID=$1 WHERE id=$2";
  await client.query(query, [gameID, roomID]);
}

//////////////////////////////////////////////////////////////////////////
// UPDATE
//////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////
// GETTER
//////////////////////////////////////////////////////////////////////////

async function getUserNameOfUserWithID(client, userID){
  const query = "SELECT username FROM users WHERE id=$1";
  const result = await client.query(query, [userID]);
  return result.rows[0].username;
}

async function getGameIdOfRoom(client, roomID){
  const query = "SELECT gameID FROM rooms WHERE id=$1";
  const result = await client.query(query, [roomID]);
  return result.rows[0].gameid;
}

async function isRoomActive(client, roomID) {
  const query = `
  SELECT COUNT(DISTINCT userID) AS active_users_count
  FROM ROOM_USERS 
  WHERE roomID = $1 AND userID IN
    (SELECT id FROM USERS WHERE active = true);`

  const result = await client.query(query, [roomID]);
  const activeUserCount = result.rows[0].active_users_count;
  return activeUserCount > 0;
}

async function getRoomsWithUser(client, userID) {
  const query = "SELECT roomID FROM room_users WHERE userID=$1";
  const result = await client.query(query, [userID]);
  return result.rows;
}

/** function checks whether a user with the given userID exists */
async function userExists(client, userID) {
  const query = "SELECT EXISTS (SELECT 1 FROM USERS WHERE id = $1)";
  const result = await client.query(query, [userID]);
  return result.rows[0].exists;
}

/** function returns ID of a Room by the Roomname (-1 if room was not found) */
async function getRoomIdByName(client, roomName) {
  const query = 'SELECT id FROM rooms WHERE roomName=$1';
  const result = await client.query(query, [roomName]);

  if (result.rowCount === 0) {
    return -1;
  } else {
    return result.rows[0].id;
  }
}

/** function returns the Password of the room with the given roomID */
async function getRoomPwByID(client, roomID) {
  const query = 'SELECT roomPW FROM rooms WHERE id=$1';
  const result = await client.query(query, [roomID]);
  return result.rows[0].roompw;
}

/** function return the GameID of the Room with the given roomID */
async function getGameIdOfRoomWithRoomId(client, roomID) {
  const query = "SELECT gameID FROM rooms WHERE id=$1";
  const result = await client.query(query, [roomID]);
  return result.rows[0].gameid;
}

/** returns an array of challenges that exist in a room */
async function getExistingChallengesOfRoomWithId(client, roomID) {
  const query = "SELECT challenge, color FROM room_challenges WHERE roomID=$1 ORDER BY id ASC";
  const result = await client.query(query, [roomID]);
  return result.rows;
}

/** Function returns 25 random Challenges of a game with the corresponding gameID */
async function getRandomChallengesWithGameID(client, gameID) {
  const challengesQuery = "SELECT * FROM ALL_CHALLENGES WHERE gameID=$1";
  const queryResult = await client.query(challengesQuery, [gameID]);

  const allChallenges = queryResult.rows.map((row) => row.challenge);
  const shuffledChallenges = allChallenges.sort(() => Math.random() - 0.5);
  const uniqueChallenges = new Set();

  for (const challenge of shuffledChallenges) {
    if (uniqueChallenges.size === 25) {
      break;
    }
    uniqueChallenges.add(challenge);
  }
  return Array.from(uniqueChallenges);
}
//////////////////////////////////////////////////////////////////////////
// GETTER
//////////////////////////////////////////////////////////////////////////

module.exports = {
  getRoomIdByName,
  getRoomPwByID,
  createNewRoom,
  createUser,
  addRoomUser,
  getExistingChallengesOfRoomWithId,
  addInitialChallengesToRoom,
  userExists,
  updateUsernameOfUserWithID,
  updateColorOfChallengeInRoom,
  updateUserActive,
  getRoomsWithUser,
  isRoomActive,
  getGameIdOfRoom,
  updateGameIdOfRoom,
  getUserNameOfUserWithID,

  deleteChallengesFromRoom,
  deleteRoomFromRoomUsers,
  deleteRoomWithID,
  deleteInactiveUsers
};
