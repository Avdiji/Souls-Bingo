
//////////////////////////////////////////////////////////////////////////
// INSERTION
//////////////////////////////////////////////////////////////////////////
/** function creates a new Room **/
async function createNewRoom(client, roomName, roomPW) {
  const insertIntoRooms =
    "INSERT INTO ROOMS (roomName, roomPW) VALUES ($1,$2) RETURNING *";
  const rooms = await client.query(insertIntoRooms, [roomName,roomPW]);
}

/** function add a new User to users */
async function createUser(client,userID, username) {
  const insertIntoUsers =
    "INSERT INTO USERS (id,username) VALUES ($1,$2) RETURNING *";
  const users = await client.query(insertIntoUsers, [userID,username]);
}

/** function adds a User to a Room **/
async function addRoomUser(client, roomID, userID) {
  const query = "INSERT INTO ROOM_USERS (roomID, userID) VALUES ($1, $2) RETURNING *" ;
  const room_users = await client.query(query, [roomID, userID]);
}

/** function adds 25 initialChallenges To the Room with the given roomID (color null) **/
async function addInitialChallengesToRoom(client, roomID, challenges){
  const gameID = await getGameIdOfRoomWithRoomId(client, roomID);
  var query = "";

  for(i=0; i < 25; i++){
    query ="INSERT INTO ROOM_CHALLENGES (roomID, challenge, color) VALUES ($1,$2,$3) RETURNING *";
    const result = await client.query(query, [roomID, challenges[i], null]);
  }
}
//////////////////////////////////////////////////////////////////////////
// INSERTION
//////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////
// UPDATE
//////////////////////////////////////////////////////////////////////////
async function updateUsernameOfUserWithID(client, userID, username){
  const query = "UPDATE USERS SET username = $1 WHERE id=$2";
  const result = await client.query(query, [username, userID]);
}
//////////////////////////////////////////////////////////////////////////
// UPDATE
//////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////
// GETTER
//////////////////////////////////////////////////////////////////////////

/** function checks whether a user with the given userID exists */
async function userExists(client, userID){
  const query="SELECT EXISTS (SELECT 1 FROM USERS WHERE id = $1)";
  const result = await client.query(query, [userID]);
  return result.rows[0].exists;
}

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

/** function returns the Password of the room with the given roomID */
async function getRoomPwByID(client, roomID){
  const query = 'SELECT roomPW FROM rooms WHERE id=$1';
  const result = await client.query(query, [roomID]);
  return result.rows[0].roompw;
}

/** function return the GameID of the Room with the given roomID */
async function getGameIdOfRoomWithRoomId(client, roomID){
  const query = "SELECT gameID FROM rooms WHERE id=$1";
  const result = await client.query(query, [roomID]);
  return result.rows[0].gameid;
}

/** returns an array of challenges that exist in a room */
async function getExistingChallengesOfRoomWithId(client, roomID){
  const query = "SELECT challenge FROM room_challenges WHERE roomID=$1";
  const result = await client.query(query, [roomID]);
  const challenges = result.rows.map((challengeObj) => challengeObj.challenge);
  return challenges;
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
  getRandomChallengesWithGameID,
  getExistingChallengesOfRoomWithId,
  addInitialChallengesToRoom,
  userExists,
  updateUsernameOfUserWithID
};
