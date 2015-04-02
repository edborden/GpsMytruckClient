attr = DS.attr

class User extends DS.Model
	email: attr()
	password: attr()
	companies: DS.hasMany 'company'

`export default User`