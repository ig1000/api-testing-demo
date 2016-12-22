
console.log("Starting eComm Widget Version Switcher");

const express = require('express')  
const app = express()  
const port = process.env.PORT || 1337;
var arg = process.argv[2];
const environment = process.env.ENVIRONMENT || arg;

console.log("Environment:" + environment);

app.get('/', (request, response) => {

    response.writeHead(200, { 'Content-Type': 'text/plain' });
    response.end('Welcome \n');  
	
})

app.get('/questions', (request, response) => {
    
    response.writeHead(200, { 'Content-Type': 'text/plain' });
    response.end('Question Text\n');    
})

app.listen(port, (err) => {  
  if (err) {
    return console.log('something bad happened', err)
  }

  console.log(`server is listening on ${port}`)
})
