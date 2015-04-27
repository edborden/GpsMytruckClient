attr = DS.attr

class Company extends DS.Model
	name:attr()
	user: DS.belongsTo 'user'
	modelName: "Company"
	devices: DS.hasMany 'device'
	towbook: attr 'boolean'
	audit: attr 'boolean'

`export default Company`