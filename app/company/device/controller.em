`import EmberValidations from 'ember-validations'`

class CompanyDeviceController extends Ember.Controller with EmberValidations.Mixin

	actions:
		save: ->
			if @isValid
				device = @store.createRecord 'device',{hardwareId:@hardwareId,company:@model}
				@send 'saveModel',device
				@transitionToRoute 'company',@model
			else
				@send 'errors',{hardwareId:@errors.hardwareId}
	
	validations:
		hardwareId: 
			presence: true

`export default CompanyDeviceController`