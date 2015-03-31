attr = DS.attr

class Session extends DS.Model
	token: attr()
	user: DS.belongsTo 'user'

	email: attr()
	password: attr()

`export default Session`