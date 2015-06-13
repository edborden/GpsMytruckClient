class CompanyDeviceEditController extends Ember.Controller

	actions:
		save: ->
			@send 'saveModel',@model
			@transitionToRoute 'company',@model.company

`export default CompanyDeviceEditController`