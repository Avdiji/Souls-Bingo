/** Function determines whether a room with a specific roomName exists */
async function roomExists(client, roomName){
    const checkForRoomName = "SELECT id FROM rooms WHERE roomName = $1";
    const result = await client.query(checkForRoomName, [roomName]);
    return result.rowCount > 0;
}

/** function creates a new Room **/
async function createNewRoom(client, roomName){
    await getRandomChallengesWithGameID(client, 1);

    // const insertIntoRooms = "INSERT  INTO ROOMS (roomName, gameID) VALUES ($1) RETURNING *";
    // const rooms = await client.query(insertIntoRooms, [roomName]);

}

async function createUser(client, username){
    const insertIntoUsers = "INSERT INTO USERS (username) VALUES ($1) RETURNING *";
    const rooms = await client.query(insertIntoRooms, [username]);
}

/** Function returns 25 random Challenges of a game with the corresponding gameID */
async function getRandomChallengesWithGameID(client, gameID){
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

    console.log(Array.from(uniqueChallenges));
    console.log(uniqueChallenges.size);
}

module.exports = {
    roomExists,
    createNewRoom,
    createUser,
  };