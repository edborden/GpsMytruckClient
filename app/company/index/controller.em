`import EmberValidations from 'ember-validations'`

class CompanyIndexController extends Ember.Controller with EmberValidations

	startRaw:null
	endRaw:null
	start: ~> @startRaw.toISOString() if @startRaw?
	end: ~> @endRaw.toISOString() if @endRaw?
	
	validations:
		startRaw: 
			presence: true ##{message:"Please input a start date for audit export."}
		endRaw: 
			presence: true ##{message:"Please input an end date for audit export."}

`export default CompanyIndexController`