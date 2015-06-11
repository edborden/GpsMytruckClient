class IndexController extends Ember.Controller

	adminLogin: false

	email: null
	password: null
	companyName: null

	actions:
		loginClick: ->
			console.log 'click'
			if @companyName?
				console.log 'company login'
				user = {companyName:@companyName}
			else
				user = {email:@email,password:@password}
			@send 'login',user
		adminClick: -> 
			@adminLogin = true
			false

`export default IndexController`