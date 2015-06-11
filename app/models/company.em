`import ModelName from 'gps-mytruck-client/mixins/model-name'`

attr = DS.attr
belongsTo = DS.belongsTo
hasMany = DS.hasMany

class Company extends DS.Model with ModelName
	name:attr()
	user: belongsTo 'user'
	devices: hasMany 'device'
	towbook: attr 'boolean'
	audit: attr 'boolean'

`export default Company`