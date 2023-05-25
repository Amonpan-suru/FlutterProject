// MySQL
const express = require('express');
const app = express();
const hostname = '127.0.0.1';
const port = 3000;
const bodyParser = require('body-parser');
const mysql = require('mysql');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));

// ใส่ค่าตามที่เราตั้งไว้ใน mysql
const con = mysql.createConnection({
    host: "127.0.0.1",
    user: "root",
    password: "film110TH",
    database: "flutter"
})

con.connect(err => {
    if(err) throw(err);
    else{
        console.log("MySQL connected");
    }
})

let tablename = "userInfo";

const queryDB = (sql) => {
    return new Promise((resolve,reject) => {
        // query method
        con.query(sql, (err,result, fields) => {
            if (err) reject(err);
            else
                resolve(result)
        })
    })
}

// create table and add data to database
app.post("/addDB",async (req,res) => {
    let sql = "CREATE TABLE IF NOT EXISTS userInfo (id INT AUTO_INCREMENT PRIMARY KEY, reg_date TIMESTAMP default CURRENT_TIMESTAMP, username VARCHAR(255),password VARCHAR(100),img VARCHAR(100))";
    let result = await queryDB(sql);
    sql = `INSERT INTO userInfo (username, password) VALUES ("${req.body.username}", "${req.body.password}")`;
    result = await queryDB(sql);
    console.log("New record created successfully");
    res.end("New record created successfully");
})

app.post("/registerMySql",async(req,res) =>{
    let sql  = `CREATE TABLE IF NOT EXISTS UserData (id INT AUTO_INCREMENT PRIMARY KEY, reg_date TIMESTAMP default CURRENT_TIMESTAMP, username VARCHAR(255),email VARCHAR(255),password VARCHAR(100),img VARCHAR(100))`;
    let result = await queryDB(sql);
    
    let sqlUserName = "SELECT username , email FROM UserData";
    result = await queryDB(sqlUserName);
    result = Object.assign({},result);
    

    let obj = Object.keys(result);
    for(var i = 0 ; i < obj.length;i++){
        if(result[obj[i]].username == req.body.username){
            // console.log("Already username")
            res.send("0");
            return;        
        }     
    }
    for(var i = 0 ; i < obj.length;i++){
        if(result[obj[i]].email == req.body.email){
            // console.log("Already email")
            res.send("1");
            return;
        } 
    }
        
    sql = `INSERT INTO UserData (username,email, password) VALUES ("${req.body.username}","${req.body.email}","${req.body.password}")`;
    result = await queryDB(sql);

    // console.log("Register Complete");
    res.send("2");
})

app.post("/loginMySql",async(req,res) =>{

    let sql = "SELECT username ,email, password FROM UserData";
    let result = await queryDB(sql);
    result = Object.assign({},result);
    
    let checkusername = false;
    let checkpassword = false;

    let currentEmail;
    let obj = Object.keys(result);
    for(var i = 0 ; i < obj.length;i++){
        if(result[obj[i]].username == req.body.username){
            checkusername = true;
            currentEmail = result[obj[i]].email;
            console.log(result[obj[i]].username);
        }
        if(checkusername){
            if(result[obj[i]].password == req.body.password){
                checkpassword = true;
                console.log(result[obj[i]].password)
                break;
            }
            res.send("1,");
            break;
        }
    }
    if(checkusername == false)
    res.send("0,");

    if(checkusername && checkpassword){
        res.send("2," + req.body.username+","+currentEmail+","+req.body.password);
        console.log("LoginComplete");
    }  
})

app.post("/SaveHistory",async (req,res) => {
    let sql = `CREATE TABLE IF NOT EXISTS History (id INT AUTO_INCREMENT PRIMARY KEY, time TIMESTAMP default CURRENT_TIMESTAMP, username VARCHAR(255),products VARCHAR(255),price VARCHAR(100))`;
    let result = queryDB(sql);

    sql = `INSERT INTO History (username,products, price) VALUES ("${req.body.username}","${req.body.products}","${req.body.price}")`;
    result = queryDB(sql)
    console.log("Save");
    res.send("Save");
})

// update data
app.post("/updateDB",async (req,res) => {
    let sql = `UPDATE ${tablename} SET password = '${req.body.password}' WHERE username = '${req.body.username}'`;
    let result = await queryDB(sql);
    console.log(result);
    res.end("Record updated successfully");
})

// delete data
app.post("/deleteDB",async (req,res) => {
    console.log("delete");
    let sql = `DELETE FROM ${tablename} WHERE username = '${req.body.username}'`;
    let result = await queryDB(sql);
    console.log(result);
    res.end("Record deleted successfully");
})

// show data
app.get("/showDB", async (req,res) => {
    // let sql = `SELECT * FROM ${tablename}`;
    let sql = `SELECT id, username, password FROM ${tablename}`;
    let result = await queryDB(sql);
    result = Object.assign({},result);
    console.log(result);
    res.json(result);
})
 
 app.listen(port, hostname, () => {
    console.log(`Server running at   http://${hostname}:${port}/`);
});