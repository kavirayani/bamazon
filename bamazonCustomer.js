var mysql = require("mysql");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "MySQL",
  database: "bamazon"
});

connection.connect(function(err) {
if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
  readProducts();
});

function readProducts() {
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;

    // Log all results of the SELECT statement
    console.log(res);
    connection.end();
  });
}

