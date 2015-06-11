`import config from 'gps-mytruck-client/config/environment'`
`import ModelName from 'gps-mytruck-client/mixins/model-name'`

attr = DS.attr
belongsTo = DS.belongsTo
hasMany = DS.hasMany

class Device extends DS.Model with ModelName

	session: Ember.inject.service()
	hardwareId:attr()
	truckId:attr()
	company: belongsTo 'company'
	auditLink: ~> "#{config.apiHostName}/devices/#{@id}/locations.csv?token=#{@session.token}"
	locationsCount: attr 'number'

`export default Device`