const app = require('express')()

app.get('/kill', require('crasher'))

app.get('/*', (req, res) => {
	res.send('hello, world\n')
	console.log(new Date().toUTCString(), req.ip.split(":")[3], req.url)
})

app.listen(process.env.PORT || 8080, function(){ console.log('Node.js app is listening on port:', this.address().port) })
