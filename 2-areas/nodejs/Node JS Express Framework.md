Create a project using express

```JavaScript
npm init
```

Install express

```JavaScript
npm install express
```

Create a page

```JavaScript
var express  = require('express');
var app = express();

app.get('/', function(req, res) {
    res.send('Hello World');
})

var server = app.listen(8081, function() {
    var host = server.address().address
    var port  = server.address().port

    console.log("Example app listening at http://%s:%s", host, port)
})
```

Run app

```JavaScript
node Hello_world.js
```

Create an index page

```JavaScript
const express  = require('express');
const app = express();

app.get('/', function(req, res) {
    res.send('Hello There!');
})

app.listen(3000, () => {
    console.log('Server started on port 3000')
})
```

Run app

```JavaScript
node index.js
```

Create a module Users and export it.

```JavaScript
const users = [
    {
        id: 1,
        name: "John",
        email: "john@gmail.com"
    },
    {
        id: 2,
        name: "Smith",
        email: "smith@gmail.com"
    },
    {
        id: 3,
        name: "Jack",
        email: "jack@gmail.com"
    },
    {
        id: 4,
        name: "Chris",
        email: "chris@gmail.com"
    },
]

module.exports = users;
```

Install uuid package

```JavaScript
npm install uuid
```

Create a file user.js in a directory /routes/api

```JavaScript
const express = require("express");
const router = express.Router();
const uuid = require("uuid");
let users = require("../../Users");

// get all users
router.get("/", (req, res) => {
    res.json(users);
});

module.exports = router
```

Update index.js to include the users module

```JavaScript
const express  = require('express');
const app = express();

app.use(express.json())
app.use(express.urlencoded({extended: false}))

app.use('/api/users', require('./routes/api/users'))

app.get('/', function(req, res) {
    res.send('Hello There!');
})

app.listen(3000, () => {
    console.log('Server started on port 3000')
})
```

Get all users

```JavaScript
localhost:3000/api/users
```

With response

```JavaScript
[
	{
		"id": 1,
		"name": "John",
		"email": "john@gmail.com"
	},
	{
		"id": 2,
		"name": "Smith",
		"email": "smith@gmail.com"
	},
	{
		"id": 3,
		"name": "Jack",
		"email": "jack@gmail.com"
	},
	{
		"id": 4,
		"name": "Chris",
		"email": "chris@gmail.com"
	}
]
```

Update the code to get a user by ID

```JavaScript
// get user by id
router.get('/:id', (req, res) => {
    const found = users.some(user => user.id === parseInt(req.params.id))

    if(found) {
        res.json(users.filter(user => user.id === parseInt(req.params.id)))
    } else {
        res.sendStatus(400)
    }
})
```

Get user by id

```JavaScript
localhost:3000/api/users/1
```

Update the code to create a new user

```JavaScript
// create a new user
router.post('/', (req, res) => {
    const newUser = {
        id: uuid.v4(),
        name: req.body.name,
        email: req.body.email
    }

    if(!newUser.name || !newUser.email) {
        return res.sendStatus(400)
    }

    users.push(newUser)
    res.json(users)
})
```

Update the code to update a new user

```JavaScript
// update a user
router.put('/:id', (req, res) => {
    const found = users.some(user => user.id === parseInt(req.params.id))

    if(found) {
        const updatedUser = req.body
        users.forEach(user => {
            if(user.id === parseInt(req.params.id)) {
                user.name = updatedUser.name ? updatedUser.name: user.name
                user.email = updatedUser.email ? updatedUser.email: user.email
                res.json({msg: 'User updated', user})
            }
        })
    }
})
```

Update the code to delete a user

```JavaScript
// delete user
router.delete('/:id', (req, res) => {
    const found = users.some(user => user.id === parseInt(req.params.id))

    if(found) {
        users = users.filter(user => user.id !== parseInt(req.params.id))
        res.json({
            msn: "User deleted",
            users
        })
    } else {
        res.sendStatus(400)
    }
})
```