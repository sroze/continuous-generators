require('babel-core/register')({
  presets: ['es2015', 'stage-0']
})
const debug = require('debug')('app:bin:server')
const server = require('../src/server/main')
const port = process.env.PORT || 3000

server.listen(port, () => {
  debug(`Server now running on port ${port}`)
  debug(`Server running in "${process.env.NODE_ENV}" environment`)
})
