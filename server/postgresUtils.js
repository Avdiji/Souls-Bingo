/** Function determines whether a room with a specific roomName exists */
async function roomExists(client, roomName) {
  const checkForRoomName = "SELECT id FROM rooms WHERE roomName = $1";
  const result = await client.query(checkForRoomName, [roomName]);
  return result.rowCount > 0;
}

/** function creates a new Room **/
async function createNewRoom(client, roomName) {
  const insertIntoRooms =
    "INSERT INTO ROOMS (roomName) VALUES ($1) RETURNING *";
  const rooms = await client.query(insertIntoRooms, [roomName]);
  console.log(rooms.rows);
}

/** function add a new User to users */
async function createUser(client, username) {
  const insertIntoUsers =
    "INSERT INTO USERS (username) VALUES ($1) RETURNING *";
  const users = await client.query(insertIntoUsers, [username]);
  console.log(users.rows);
}

/** function adds a User to a Room **/
async function addRoomUser(client, roomName, username) {
  const queryString = `
      INSERT INTO ROOM_USERS (roomID, userID)
      SELECT r.id AS roomID, u.id AS userID
      FROM ROOMS r, USERS u
      WHERE r.roomName = $1 AND u.username = $2 RETURNING *;
    `;
  const room_users = await client.query(queryString, [roomName, username]);
  console.log(room_users.rows);
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
  roomExists,
  createNewRoom,
  createUser,
  addRoomUser
};
