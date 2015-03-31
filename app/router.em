`import config from './config/environment'`

class Router extends Ember.Router
  location: config.locationType

Router.map ->

`export default Router`