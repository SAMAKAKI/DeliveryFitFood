const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const mysql = require('mysql2');

const app = express();

app.use(cors());
app.use(bodyParser.json());

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'deliverylist',
    port: 3306
})

db.commit((err) => {
    if(err) {
        console.log(err, 'data base error ==>');
        return;
    } else{
        console.log('database connected...');
    }
});

app.get('/api/delivery-list', (req, res) => {
    let query = 'select * from products';
    db.query(query, (err, result) => {
        if(err){
            console.log(err, 'database query get error ==>');
        }
        if(result != []){
            res.send({
                message: 'getting data is success',
                data: result
            });
        } else{
            res.send({
                message: 'getting data is error',
                data: {}
            });
        }
    });
});

app.get('/api/delivery-list/:id', (req, res) => {
    let query = `select * from products where id=${req.params.id}`;
    db.query(query, (err, result) => {
        if(err){
            console.log('database query single get error ==>');
        }
        if(result != []){
            res.send({
                message: 'getting single data is success',
                data: result
            });
        } else{
            res.send({
                message: 'getting single data is error',
                data: {}
            })
        }
    });
});

app.get('/api/delivery-list-burgers', (req, res) => {
    let query = "select * from products where kategory='Burgers'";
    db.query(query, (err, result) => {
        if(err){
            console.log('database query burgers get error ==>');
        }
        if(result != []){
            res.send({
                message: 'getting burgers data is success',
                data: result
            });
        } else{
            res.send({
                message: 'getting burgers data is error',
                data: {}
            })
        }
    });
});

app.get('/api/delivery-list-sushi', (req, res) => {
    let query = "select * from products where kategory='Sushi'";
    db.query(query, (err, result) => {
        if(err){
            console.log('database query sushi get error ==>');
        }
        if(result != []){
            res.send({
                message: 'getting sushi data is success',
                data: result
            });
        } else{
            res.send({
                message: 'getting sushi data is error',
                data: {}
            })
        }
    });
});

app.get('/api/delivery-list-pizza', (req, res) => {
    let query = "select * from products where kategory='Pizza'";
    db.query(query, (err, result) => {
        if(err){
            console.log('database query sushi get error ==>');
        }
        if(result != []){
            res.send({
                message: 'getting sushi data is success',
                data: result
            });
        } else{
            res.send({
                message: 'getting sushi data is error',
                data: {}
            })
        }
    });
});

app.get('/api/delivery-list-breakfast', (req, res) => {
    let query = "select * from products where kategory='Breakfast'";
    db.query(query, (err, result) => {
        if(err){
            console.log('database query sushi get error ==>');
        }
        if(result != []){
            res.send({
                message: 'getting sushi data is success',
                data: result
            });
        } else{
            res.send({
                message: 'getting sushi data is error',
                data: {}
            })
        }
    });
});

app.get('/api/delivery-list-sort-by-name-down', (req, res) => {
    let query = "select * from products order by name";
    db.query(query, (err, result) => {
        if(err){
            console.log('database query sort by name down get error ==>');
        }
        if(result != []){
            res.send({
                message: 'getting sort by name down data is success',
                data: result
            });
        } else{
            res.send({
                message: 'getting sort by name down data is error',
                data: {}
            })
        }
    });
});

app.get('/api/delivery-list-sort-by-name-up', (req, res) => {
    let query = "select * from products order by name desc";
    db.query(query, (err, result) => {
        if(err){
            console.log('database query sort by name up get error ==>');
        }
        if(result != []){
            res.send({
                message: 'getting sort by name up data is success',
                data: result
            });
        } else{
            res.send({
                message: 'getting sort by name up data is error',
                data: {}
            })
        }
    });
});

app.get('/api/delivery-list-sort-by-date-create', (req, res) => {
    let query = "select * from products order by dateCreate desc";
    db.query(query, (err, result) => {
        if(err){
            console.log('database query sort by date create get error ==>');
        }
        if(result != []){
            res.send({
                message: 'getting sort by date create data is success',
                data: result
            });
        } else{
            res.send({
                message: 'getting sort by date create data is error',
                data: {}
            })
        }
    });
});

app.listen(3000, () => {
    console.log('server is running...');
});
