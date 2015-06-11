`import ModelName from 'gps-mytruck-client/mixins/model-name'`

attr = DS.attr
belongsTo = DS.belongsTo
hasMany = DS.hasMany

class User extends DS.Model with ModelName
	email: attr()
	password: attr()
	companies: hasMany 'company'

`export default User`