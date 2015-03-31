class ApplicationRoute extends Ember.Route

	beforeModel: -> 
		if localStorage.gpsmytruckToken
			@session.openWithToken(localStorage.gpsmytruckToken)

	actions:
		login: (user) -> 
			console.log 'login'
			@transitionTo 'loading'
			@session.openWithUser(user).then(
				(success) =>
					@notify.warning success					
					@transitionTo 'index'
				(errors) =>
					@transitionTo 'index'
					@send 'errors',errors.errors			
			)	
		logout: ->
			@transitionTo 'loading'
			@session.close().then => 
				@transitionTo 'index'
				@notify.warning "Logged out successfully."
		save: (model) ->
			if model.isDirty
				model.save().then(
					(success) => @notify.warning model.modelName + " saved."
					(errors) => @send 'errors', errors.errors
				)

		errors: (errors) -> 
			for prop,array of errors
				@notify.warning message for message in array

`export default ApplicationRoute`