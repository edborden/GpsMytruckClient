`import config from './config/environment'`

class Router extends Ember.Router
  location: config.locationType

Router.map ->
	@route 'company', {path: 'company/:company_id'}, ->
		@route 'edit'
		@route 'device', ->
			@route 'new'
			@route 'edit', {path: 'edit/:device_id'}
	@route 'mileage'

`export default Router`