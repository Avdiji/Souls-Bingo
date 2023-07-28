const postgresUtils = require("../postgresUtils");

// function handles the initial creation of a room and the corresponding joining of the room
async function handleInitialJoin(socket, client, data) {
    const roomName = data.roomName;
    const userID = socket.id;
    const username = data.username;
    const roomPW = data.roomPW;

    await postgresUtils.createNewRoom(client, roomName, roomPW);
    roomID = await postgresUtils.getRoomIdByName(client, roomName);

    await createOrUpdateUser(client, userID, username);
    await postgresUtils.addRoomUser(client, roomID, userID);

    const challenges = await postgresUtils.getRandomChallengesWithGameID(client, 1);
    await postgresUtils.addInitialChallengesToRoom(client, roomID, challenges);

    socket.emit("receive_challenges", challenges);
    socket.join(roomName);

    console.log(username + " (" + userID + ") Joined Room: " + roomName);
}

// function handles the joining of an existing room
async function handleJoinPostRoomCreation(socket, client, data) {
    const roomName = data.roomName;
    const userID = socket.id;
    const username = data.username;
    const roomPW = data.roomPW;

    const correctRoomPW = await postgresUtils.getRoomPwByID(client, roomID);
    if (roomPW === correctRoomPW) {
        await createOrUpdateUser(client, userID, username);
        await postgresUtils.addRoomUser(client, roomID, userID);

        const challenges = await postgresUtils.getExistingChallengesOfRoomWithId(client, roomID);
        socket.emit("receive_challenges", challenges);
        socket.join(roomName);

        console.log(username + " (" + userID + ") Joined Room: " + roomName);
    }
}

// function creates a new user or updates an existing user
async function createOrUpdateUser(client, userID, username) {
    if (await postgresUtils.userExists(client, userID)) {
        await postgresUtils.updateUsernameOfUserWithID(client, userID, username);
        console.log("USER UPDATED");
    } else {
        await postgresUtils.createUser(client, userID, username);
        console.log("USER CREATED");
    }
}

module.exports = {
    handleInitialJoin,
    handleJoinPostRoomCreation
};