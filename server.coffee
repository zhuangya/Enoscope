http = require 'http'
url = require 'url'
server = http.createServer (req, res) ->
  url_parts = url.parse req.url, true
  query = url_parts.query

  date = new Date()
  console.log date.toLocaleDateString() + ' ' +date.toLocaleTimeString() + '|' + req.connection.remoteAddress + '|' + query.refer + '|' + query.uri + '|' + query.rmid + '|' + req.headers['user-agent']

  res.writeHead 200, 'Content-Type': 'image/gif', 'Cache-Control': 'no-cache', 'Expires': -1

  res.end()
  return
.listen 3000, '127.0.0.1'
