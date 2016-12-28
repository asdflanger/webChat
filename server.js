var express = require("express");
var app = express();
var server = require("http").createServer(app);
var io = require("socket.io").listen(server);

var users = [];
var connections = [];
var channels = [];
var address = [];

server.listen(process.env.PORT || 3000);
console.log('Servidor escuchando');
app.get('/', function(req,res){
    res.sendFile(__dirname + '/index.html');
});

io.sockets.on('connection', function(socket){
    connections.push(socket);
    //console.log('Usuario Conectado: %s sockets connected', connections.length);
    var IP = socket.request.headers['x-forwarded-for'] || socket.request.connection.remoteAddress;
    address.push(IP);
    console.log("Usuario Conectado");
    console.log("Usuarios Conectados: " + address.length);
    //desconecciones
    socket.on('disconnect', function(data){
        //if(!socket.username) return;
        console.log("Usuario Desconectado");
        console.log("Usuarios Conectados: " + address.length);
        users.splice(users.indexOf(socket.username), 1);
        //eliminamos el canal.
        channels.splice(users.indexOf(socket.username), 1);

        address.splice(address.indexOf(socket.username), 1);
        
        updateUserNames();
        
        connections.splice(connections.indexOf(socket), 1);
        
        //console.log('Disconnected: %s sockets connected', connections.length);
    });
    //enviar mensajes
    socket.on('send message', function(data){
        io.sockets.emit('new message', {msg: data, user: socket.username});
    });
    //nuevo usuario
    socket.on('new user', function(data, callback){
        callback(true);
        socket.username = data;
        users.push(socket.username);
        updateUserNames();
    });
    function updateUserNames(){
        io.sockets.emit('get users', users);
    }
});