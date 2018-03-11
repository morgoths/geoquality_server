var mysql = require('mysql');
var express = require('express');
var app = express();

var con = mysql.createConnection({
  host: "mysql",
  user: "testing",
  password: "testing",
  database: "geoquality"
});


con.connect(function(err) {
  if (err) throw err;
  con.query("SELECT * FROM crime", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
  });
});

// Rest API - URLs handling
app.get('/', function(req, res){
  res.sendFile(__dirname + '/index.html');
});

app.get('/crimes', function(req, res){
  /*
  res.send(twoDArrayToJson(crimeData, "crimes"));
  */
});

app.get('/crimes/:tagId', function(req, res){
  /*
  var index = getLineIndexById(crimeData, req.params.tagId);
  res.send(twoDarrayLineToJson(crimeData, index));
  */
});

// Run server
app.listen(8080);
