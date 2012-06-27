http = require 'http'
url = require 'url'
server = http.createServer (req, res) ->
  url_parts = url.parse req.url, true
  query = url_parts.query

  console.log new Date().getTime(), query.ip, query.refer, query.uri, query.rmid

  res.end()
  return
.listen 3000, '127.0.0.1'
