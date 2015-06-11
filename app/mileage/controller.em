`import EmberValidations from 'ember-validations'`
`import ServerTalk from 'gps-mytruck-client/mixins/server-talk'`

class MileageController extends Ember.Controller with EmberValidations.Mixin, ServerTalk

	selectedTruck:null

	startRaw:null
	endRaw:null
	start: ~> if @startRaw? then @startRaw.toISOString() else null
	end: ~> if @endRaw? then @endRaw.toISOString() else null

	loading: false
	result:null

	actions:
		reportClick: ->
			selectedIdString = @selectedTruck.id.toString()
			@loading = true
			@getServer("devices/#{selectedIdString}/mileage",{start:@start,end:@end}).then(
				(response) =>
					@result = response + " miles"
					@loading = false
			)

	validations:
		startRaw:
			presence: true
		endRaw:
			presence: true
		selectedTruck:
			presence: true

`export default MileageController`