class IndexRoute extends Ember.Route

	beforeModel: ->
		console.log @session.me.isCompany if @session.loggedIn
		@transitionTo 'mileage' if @session.loggedIn and @session.me.isCompany

`export default IndexRoute`