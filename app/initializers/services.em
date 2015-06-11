initializer =

	initialize: (container,application) ->

		services = ['session']

		#Inject into app factories
		['controller','route','adapter'].forEach (type) ->
			services.forEach (service) ->
				application.inject type, service, 'service:' + service

`export default initializer`