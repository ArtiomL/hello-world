const app = require('express')()

app.get('/kill', require('crasher'))

app.get('/*', (req, res) => {
	res.send('hello, world\n')
	console.log(new Date().toLocaleTimeString(), req.ip.split(":")[3], req.url)
})

app.listen(8080, () => console.log('Node.js app is listening on port: 8080'))
