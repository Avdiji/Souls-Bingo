const postgresUtils = require("../postgresUtils");

// function handles the initial creation of a room and the corresponding joining of the room
async function handleInitialJoin(socket, client, data) {
    const roomName = data.roomName;
    const userID = socket.id;
    const username = data.username;
    const roomPW = data.roomPW;

    await postgresUtils.createNewRoom(client, roomName, roomPW);
    var roomID = await postgresUtils.getRoomIdByName(client, roomName);

    await createOrUpdateUser(client, userID, username);
    await postgresUtils.addRoomUser(client, roomID, userID);
    await postgresUtils.addInitialChallengesToRoom(client, roomID);

    socket.emit("receive_gameid", await postgresUtils.getGameIdOfRoom(client, roomID));
    socket.emit("receive_challenges", await postgresUtils.getExistingChallengesOfRoomWithId(client, roomID));
    socket.join(roomName);
    socket.emit("receive_correctPwConfirmation", true);

    const message = "- Player " + username + " joined " + roomName + " (" + roomPW + ")";
    console.log(message);
    socket.emit("receive_log", message);
    socket.to(roomName).emit("receive_log", message)
}

// function handles the joining of an existing room
async function handleJoinPostRoomCreation(socket, client, data) {
    const roomName = data.roomName;
    const userID = socket.id;
    const username = data.username;
    const roomPW = data.roomPW;

    var roomID = await postgresUtils.getRoomIdByName(client, roomName);
    const correctRoomPW = await postgresUtils.getRoomPwByID(client, roomID);

    if (roomPW === correctRoomPW) {
        await createOrUpdateUser(client, userID, username);
        await postgresUtils.addRoomUser(client, roomID, userID);
        const dbGameID = await postgresUtils.getGameIdOfRoom(client, roomID);

        socket.emit("receive_gameid", dbGameID);
        console.log("Joined Room with GameID: " + dbGameID);
        socket.emit("receive_challenges", await postgresUtils.getExistingChallengesOfRoomWithId(client, roomID));
        socket.join(roomName);
        socket.emit("receive_correctPwConfirmation", true);

        const message = "- Player " + username + " joined " + roomName + " (" + roomPW + ")";
        console.log(message);
        socket.emit("receive_log", message);
        socket.to(roomName).emit("receive_log", message)
    } else {
        socket.emit("receive_correctPwConfirmation", false);
    }
}

// function creates a new user or updates an existing user
async function createOrUpdateUser(client, userID, username) {
    if (await postgresUtils.userExists(client, userID)) {
        await postgresUtils.updateUsernameOfUserWithID(client, userID, username);
    } else {
        await postgresUtils.createUser(client, userID, username);
    }
}

module.exports = {
    handleInitialJoin,
    handleJoinPostRoomCreation
};