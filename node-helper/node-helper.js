#!/usr/bin/env node 

server.on('stream', (stream, headers) => {
  // Stream is a Duplex 

  stream.respond({
    'content-type': 'text/html', 
    ':status': 200
  })

  stream.end('<h1>Mornin Bishes </h1>'); 
})
