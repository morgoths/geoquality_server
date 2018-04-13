var express = require('express');
var app = express();

var fs = require('fs');
var parse = require('csv-parse');

// CSV loading
var crimeData=[];
fs.createReadStream('data/crime.csv').pipe(parse({delimiter: ','})).on('data', function(csvrow) { crimeData.push(csvrow); })

var impo80Data=[];
fs.createReadStream('data/imposition_80000.csv').pipe(parse({delimiter: ','})).on('data', function(csvrow) { impo80Data.push(csvrow); })

var impo150Data=[];
fs.createReadStream('data/imposition_150000.csv').pipe(parse({delimiter: ','})).on('data', function(csvrow) { impo150Data.push(csvrow); })

var popuDistrictsData=[];
fs.createReadStream('data/population_districts.csv').pipe(parse({delimiter: ','})).on('data', function(csvrow) { popuDistrictsData.push(csvrow); })

var popuCommunesData=[];
fs.createReadStream('data/population_communes.csv').pipe(parse({delimiter: ','})).on('data', function(csvrow) { popuCommunesData.push(csvrow); })

var popuCantonsData=[];
fs.createReadStream('data/population_cantons.csv').pipe(parse({delimiter: ','})).on('data', function(csvrow) { popuCantonsData.push(csvrow); })

// Enable cross-origin
app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

// Rest API - URLs handling
app.get('/', function(req, res){
  res.sendFile(__dirname + '/index.html');
});

app.get('/crimes/districts', function(req, res){
  var name = req.query['name'];
  var id = req.query['id'];

  if(id != undefined) {
    var index = getLineIndexById(crimeData, id);
    res.send(twoDarrayLineToJson(crimeData, index));
  } else if (name != undefined) {
    var index = getLineIndexByName(crimeData, name);
    res.send(twoDarrayLineToJson(crimeData, index));
  } else {
    res.send(twoDArrayToJson(crimeData, "crimes"));
  }
});

app.get('/population/districts', function(req, res){
  var name = req.query['name'];
  var id = req.query['id'];

  if(id != undefined) {
    var index = getLineIndexById(popuDistrictsData, id);
    res.send(twoDarrayLineToJson(popuDistrictsData, index));
  } else if (name != undefined) {
    var index = getLineIndexByName(popuDistrictsData, name);
    res.send(twoDarrayLineToJson(popuDistrictsData, index));
  } else {
    res.send(twoDArrayToJson(popuDistrictsData, "population"));
  }
});

app.get('/population/communes', function(req, res){
  var name = req.query['name'];
  var id = req.query['id'];

  if(id != undefined) {
    var index = getLineIndexById(popuCommunesData, id);
    res.send(twoDarrayLineToJson(popuCommunesData, index));
  } else if (name != undefined) {
    var index = getLineIndexByName(popuCommunesData, name);
    res.send(twoDarrayLineToJson(popuCommunesData, index));
  } else {
    res.send(twoDArrayToJson(popuCommunesData, "population"));
  }
});

app.get('/population/cantons', function(req, res){
  var name = req.query['name'];
  var id = req.query['id'];

  if(id != undefined) {
    var index = getLineIndexById(popuCantonsData, id);
    res.send(twoDarrayLineToJson(popuCantonsData, index));
  } else if (name != undefined) {
    var index = getLineIndexByName(popuCantonsData, name);
    res.send(twoDarrayLineToJson(popuCantonsData, index));
  } else {
    res.send(twoDArrayToJson(popuCantonsData, "population"));
  }
});

app.get('/impositions/communes', function(req, res){
  var name = req.query['name'];
  var id = req.query['id'];
  var revenue = req.query['revenue'];
  var data;

  if(revenue == undefined)
    res.send("Veuillez préciser le revenue ?revenue={xxxx}");

  if(revenue <= 80000) {
    data = impo80Data;
  } else {
    data = impo150Data
  }

  if(id != undefined) {
    var index = getLineIndexById(data, id);
    res.send(twoDarrayLineToJson(data, index));
  } else if (name != undefined) {
    var index = getLineIndexByName(data, name);
    res.send(twoDarrayLineToJson(data, index));
  } else {
    res.send(twoDArrayToJson(data, "impositions"));
  }
});

// Functions
function getLineIndexById(array, id) {
  for(var i = 0; i < array.length; i++) {
    if(array[i][0] == id)
      return i;
  }
  return -1;
}

function getLineIndexByName(array, name) {
  for(var i = 0; i < array.length; i++) {
    if(array[i][1] == name)
      return i;
  }
  return -1;
}

function twoDArrayToJson(array, name) {
  var json = '{ "' + name + '" : [';
  for(var i = 1; i < array.length; i++) {
    json += '{';
    for(var j = 0; j < array[0].length; j++) {
      json += '"' + array[0][j] + '": "' + array[i][j] + '"';
      if(j != array[0].length - 1)
        json += ',';
    }
    json += '}';
    if(i != array.length - 1)
    json += ',';
  }
  json += ']}'
  return json;
}

function twoDarrayLineToJson(array, index) {
  if(index < 0)
    return "404 Index introuvable";

  var json = '{';
  for(var i = 0; i < array[i].length; i++) {
      json += '"' + array[0][i] + '": ' + '"' + array[index][i] + '"'
      if(i != array[i].length -1)
        json += ',';
  }
  json += '}';
  return json;
}

// Run server
var port = process.env.PORT || 3000;
app.listen(port);
