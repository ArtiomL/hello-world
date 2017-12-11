const express = require('express')
const app = express()

app.get('/', (req, res) => {
	res.header('Content-Type', 'text/plain')
	res.send('hello, world\n')
})

app.get('/kill', require('crasher'))

app.listen(8080, () => console.log('Node.js app is listening on port: 8080'))
