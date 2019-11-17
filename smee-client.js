const SmeeClient = require('smee-client')
const smee = new SmeeClient({
  source: process.env.HOOK_SOURCE,
  target: process.env.HOOK_TARGET,
  logger: console
})
const events = smee.start()
