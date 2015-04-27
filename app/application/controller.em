`import EmberValidations from 'ember-validations'`

class ApplicationController extends Ember.Controller with EmberValidations.Mixin

	actions:
		addCompany: ->
			if @isValid
				company = @store.createRecord 'company',{name:@name,user:@session.me}
				@send 'saveModel', company
				@name = null
			else
				@send 'errors',{name:@errors.name}

	validations:
		name:
			presence: true

`export default ApplicationController`