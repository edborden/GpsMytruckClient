`import ModelName from 'gps-mytruck-client/mixins/model-name'`

attr = DS.attr
belongsTo = DS.belongsTo
hasMany = DS.hasMany

class User extends DS.Model with ModelName

  ## ATTRIBUTES

  email: attr "string"
  password: attr "string"

  ## ASSOCIATIONS
  
  companies: hasMany 'company', {async:false}

`export default User`