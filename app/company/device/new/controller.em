`import EmberValidations from 'ember-validations'`

class CompanyDeviceNewController extends Ember.Controller with EmberValidations

	actions:
		save: ->
			if @isValid
				device = @store.createRecord 'device',{hardwareId:@hardwareId,company:@model,truckId:@truckId}
				@send 'saveModel',device
				@transitionToRoute 'company',@model
			else
				@send 'errors',{hardwareId:@errors.hardwareId}
			@hardwareId = null
			@truckId = null
	
	validations:
		hardwareId: 
			presence: true

`export default CompanyDeviceNewController`