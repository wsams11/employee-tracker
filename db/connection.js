// require util, mysql
var mysql = require("mysql");
var util = require("util");

// connect to mysql


// setup mysql connection using util


// export connection file

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "",
  database: "companyDB"
});


connection.connect();

connection.on("error", function(err){

  console.log("ERR", err);
})

// Setting up connection.query to use promises instead of callbacks
// This allows us to use the async/await syntax
connection.query = util.promisify(connection.query);

module.exports = connection;