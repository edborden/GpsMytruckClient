`import growl from 'gps-mytruck-client/utils/growl'`

class ApplicationRoute extends Ember.Route

	beforeModel: -> 
		if localStorage.gpsmytruckToken
			@session.openWithToken(localStorage.gpsmytruckToken).then(
				(success) =>
					@sessionSuccessHandler()
				(error) =>
					@sessionSuccessHandler()
			)

	sessionSuccessHandler: ->
		@session.notifyPropertyChange 'loggedIn' #shouldn't have to do this, loggedIn should update on its own. Only on @openWithToken

	actions:
		login: (user) -> 
			@transitionTo 'loading'
			@session.openWithUser(user).then(
				(success) =>
					growl success					
					@transitionTo 'index'
				(errors) =>
					@transitionTo 'index'
					@send 'errors',errors.errors			
			)	
		logout: ->
			@transitionTo 'loading'
			@session.close().then => 
				@transitionTo 'index'
				growl "Logged out successfully."
		saveModel: (model) ->
			if model.isDirty
				model.save().then(
					(success) => growl model.modelName + " saved."
					(errors) => @send 'errors', errors.errors
				)
		errors: (errors) -> 
			for prop,messages of errors
				growl message for message in messages

		destroyModel: (model) ->
			model.destroyRecord().then(
					(success) => growl model.modelName + " deleted."
					(errors) => @send 'errors', errors.errors
			)

`export default ApplicationRoute`