const express = new require('express');
const redis = new require('redis');
const process = new require('process');


const app = express();
const client = redis.createClient({
    // Name of the service inside the docker-compose.yml file
    host: 'redis-server',
    // Default port 6379
    port: 6379
});
client.set('visits', 0);

// when someone is going to the root route of our application do the following
app.get('/', (req, res) => {
    // process.exit(0);
    client.get('visits', (err, visits) => {
        res.send('Number of visits: ' + visits);
        client.set('visits', parseInt(visits) + 1);
    })
});

const port = 8081;
app.listen(port, ()=>{
    console.log('Listening on port ' + port);
})