`import SessionService from 'gps-mytruck-client/services/session'`

initializer =
	name:'services'
	after: 'store'
	initialize: (container,application) ->

		#Register service objects
		application.register 'service:session', SessionService, {singleton: true}
		services = ['session']

		#Setup service objects
		application.inject 'service:session', 'store', 'store:main'

		#Inject into app factories
		['controller','route','adapter'].forEach (type) ->
			services.forEach (service) ->
				application.inject type, service, 'service:' + service

`export default initializer`