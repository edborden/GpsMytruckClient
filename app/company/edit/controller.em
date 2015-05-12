class CompanyEditController extends Ember.Controller

	actions:
		saveClicked: ->
			@send 'saveModel',@model
			@transitionToRoute 'index'

		deleteClicked: ->
			@send 'destroyModel',@model
			@transitionToRoute 'index'

`export default CompanyEditController`