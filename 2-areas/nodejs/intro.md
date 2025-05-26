Update node

```YAML
npm install npm --global
```

Demo project

```JavaScript
var http = require('http');
http.createServer(function(req, res) {
    res.write("Hello World! Welcome to this tutorial");
    res.end();
}).listen(8080);
```

Run the program

```JavaScript
node demo1.js
```