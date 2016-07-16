// add dependencies
var mysql = require('mysql');
var inquirer = require('inquirer');

// set up connection with sql DB
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root", 
    password: "12148370", 
    database: "bamazonDB"
});
  // connects to the DB, error handling
connection.connect(function(err) {
    if (err) {
    console.log('error connecting: ' + err.stack);
		return;
};
	console.log("");
	console.log(" Welcome to Bamazon!!")
	console.log(" Select the items from below list that you want to buy.");
})
 // display All of the Items available for sale
connection.query('SELECT id, price, productname FROM products WHERE stockquantity > 0', function(err, res) {
        if (err) {
        	console.log(err);
        	return;
        }
     console.log(res);
})

// prompt user which question for product ID and how many products they like to buy
var prompt = {
    properties: {
        productID: {
            description: "Please enter the Product ID from the list",
            type: 'integer'
        },
        quantity: {
            description: "Please enter the quantity you like to buy",
            type: 'integer'
        }
    }
};             

// once user provide the inputs for both questions: 

function promptUser(answer){
    // connect to the database for quantity and price of requested item
    connection.query('SELECT id, stockquantity, price FROM products WHERE id =' + answer.productID,
    function(err, res) {
        if (err) {
            console.log('error on query: ' + err.stack);
            return ("error");
        };
    });
}    