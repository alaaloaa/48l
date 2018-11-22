var app   = require('express')()
var http  = require('http').Server(app)
var io    = require('socket.io')(http)
var mysql = require('mysql')

var con = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : '48l'
})
var connection = io.on('connection', function(socket) {
    console.log('good')
    // socket.on('user_trying_to_fetch_his_data', function(data) {
    //     let sql = "SELECT * FROM users"
    //     con.query(sql, function (err, result) {
    //         if (err) throw err

    //         socket.emit('send_users_data', {users: result})
    //     })
    // })

    socket.on('get_chat_with_user', function(data) {
        // my_id, user_id
        let sql = `SELECT * FROM messages WHERE user_id = ${data.s_id} AND r_id = ${data.r_id} OR from_id = ${data.user_id} AND to_id = ${data.my_id}`
        con.query(sql, function (err, result) {
            if (err) throw err
            socket.emit('send_chat_with_user', {messages: result})            
        })
    })

    socket.on('send_message', function(data) {
          con.connect(function(err) {
          if (err) throw err;
          var sql = "INSERT INTO customers (msg, r_id) VALUES ?";
          var values = [
            [data.msg, data.r_id],
          ];
          con.query(sql, [values], function (err, result) {
            if (err) throw err;
            console.log("Number of records inserted: " + result.affectedRows);
          });
        });
    })




    // console.log('a user connected')
    // console.log(socket.id)


    socket.on('disconnect', function() {
        // console.log('user disconnected')
    })

})

http.listen(3000, function(){
    console.log('listening on *:3000')
})