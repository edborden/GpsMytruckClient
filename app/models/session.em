attr = DS.attr
belongsTo = DS.belongsTo
hasMany = DS.hasMany

class Session extends DS.Model

  ## ATTRIBUTES

  token: attr "string"
  companyName: attr "string"
  email: attr "string"
  password: attr "string"

  ## ASSOCIATIONS

  user: belongsTo 'user', {async:false}
  company: belongsTo 'company', {async:false}


`export default Session`