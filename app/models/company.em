attr = DS.attr

class Company extends DS.Model
	name:attr()
	user: DS.belongsTo 'user'
	modelName: "Company"

`export default Company`