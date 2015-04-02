`import config from './config/environment'`

class Router extends Ember.Router
  location: config.locationType

Router.map ->
	@route 'company', {path: 'company/:company_id'}, ->

`export default Router`