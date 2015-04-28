`import config from 'gps-mytruck-client/config/environment'`

attr = DS.attr

class Device extends DS.Model

	session: Ember.inject.service()
	hardwareId:attr()
	company: DS.belongsTo 'company'
	modelName: "Device"	
	auditLink: ~> config.apiHostName+'/devices/'+@id+'/locations.csv?token='+@session.token

`export default Device`