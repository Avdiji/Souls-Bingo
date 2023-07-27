
//////////////////////////////////////////////////////////////////////////
// INSERTION
//////////////////////////////////////////////////////////////////////////
/** function creates a new Room **/
async function createNewRoom(client, roomName) {
  const insertIntoRooms =
    "INSERT INTO ROOMS (roomName) VALUES ($1) RETURNING *";
  const rooms = await client.query(insertIntoRooms, [roomName]);
}

/** function add a new User to users */
async function createUser(client, username) {
  const insertIntoUsers =
    "INSERT INTO USERS (username) VALUES ($1) RETURNING *";
  const users = await client.query(insertIntoUsers, [username]);
}

/** function adds a User to a Room **/
async function addRoomUser(client, roomID, userID) {
  const query = "INSERT INTO ROOM_USERS (roomID, userID) VALUES ($1, $2) RETURNING *" ;
  const room_users = await client.query(query, [roomID, userID]);
}

/** function adds 25 initialChallenges To the Room with the given roomID (color null) **/
async function addInitialChallengesToRoom(client, roomID){
  const gameID = await getGameIdOfRoomWithRoomId(client, roomID);
  const challenges = await getRandomChallengesWithGameID(client, gameID);
  var query = "";

  for(i=0; i < 25; i++){
    query ="INSERT INTO ROOM_CHALLENGES (roomID, challenge, color) VALUES ($1,$2,$3) RETURNING *";
    const result = await client.query(query, [roomID, challenges[i], null]);
  }
}
//////////////////////////////////////////////////////////////////////////
// INSERTION
//////////////////////////////////////////////////////////////////////////


/** function returns ID of a Room by the Roomname (-1 if room was not found) */
async function getRoomIdByName(client, roomName){
  const query = 'SELECT id FROM rooms WHERE roomName=$1';
  const result = await client.query(query, [roomName]);

  if(result.rowCount === 0){
    return -1;
  }else{
    return result.rows[0].id;
  }
}

/** function returns ID of a Room by the Roomname (-1 if room was not found) */
async function getUserIdByUsername(client, username){
  const query = 'SELECT id FROM users WHERE username=$1';
  const result = await client.query(query, [username]);

  if(result.rowCount === 0){
    return -1;
  }else{
    return result.rows[0].id;
  }
}



async function getGameIdOfRoomWithRoomId(client, roomID){
  const query = "SELECT gameID FROM rooms WHERE id=$1";
  const result = await client.query(query, [roomID]);
  return result.rows[0].gameid;
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

module.exports = {
  getRoomIdByName,
  getUserIdByUsername,
  createNewRoom,
  createUser,
  addRoomUser,
  addInitialChallengesToRoom
};
