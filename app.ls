#!/usr/bin/env lsc
ex = require \express
app = ex()

app.use '/stc', ex.static __dirname+'/statics', {maxAge:2629740000} #static files

app.get \/favicon.ico, (req,res)->
	res.send(404)

app.get \/, (req,res)->
	res.send """
<html>
<head>
<title>Gamma</title>
</head>
<body style="margin:0;border:0;padding:0;">
<img style="width:100%;height:100%;"  src="/stc/gamma.svg" />
</body>
</html>
"""

server = app.listen 2000
