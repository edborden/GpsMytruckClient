class IndexController extends Ember.Controller

	email: null
	password: null

	actions:
		loginClick: ->
			console.log 'click'
			user = {email:@email,password:@password}
			@send 'login',user

`export default IndexController`