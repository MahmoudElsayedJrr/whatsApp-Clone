const express = require("express");
const app = express();
const http = require("http");
const server = http.createServer(app);
const cors = require("cors");
var io = require("socket.io")(server);

io.on("connection", (socket) => {
  console.log("a user connected");
  console.log(socket.id, "Has Joined");
  socket.on("/testevent", (data) => {
    console.log(data);
  });
  socket.on("disconnect", () => {
    console.log("user disconnected");
  });
});

const PORT = process.env.PORT || 3000;
server.listen(PORT, "0.0.0.0", () => {
  console.log(`Server running on port ${PORT}`);
});
