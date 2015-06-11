attr = DS.attr

class Session extends DS.Model
	token: attr()
	user: DS.belongsTo 'user'
	company: DS.belongsTo 'company'

	companyName: attr()
	email: attr()
	password: attr()

`export default Session`