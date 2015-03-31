class SessionService extends Ember.Object

	loggedIn: ~> @model?
	model: null
	token: ~> if @model? then @model.token else null
	me: ~> @model.user
	
	openWithUser: (user) ->
		return new Ember.RSVP.Promise (resolve,reject) =>
			@store.createRecord('session', user).save().then( 
				(response) =>
					@openWithSession response
					resolve "Logged in successfully"
				(error) => 
					reject error
			)

	openWithSession: (session) ->
		@model = session
		localStorage.gpsmytruckToken = @token

	openWithToken: (token) ->
		return new Ember.RSVP.Promise (resolve,reject) =>
			@store.find('session', {token:token}).then( 
				(response) => 
					@openWithSession response.firstObject
					resolve()
				(error) => 
					localStorage.clear() if error?
					reject()
			)

	close: ->
		return new Ember.RSVP.Promise (resolve,reject) =>
			@model.destroyRecord().then =>
				localStorage.clear()
				@model = null
				resolve()

`export default SessionService`