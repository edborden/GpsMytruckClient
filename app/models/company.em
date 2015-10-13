`import ModelName from 'gps-mytruck-client/mixins/model-name'`

attr = DS.attr
belongsTo = DS.belongsTo
hasMany = DS.hasMany

class Company extends DS.Model with ModelName

  ## ATTRIBUTES

  name: attr "string"
  towbook: attr 'boolean'
  audit: attr 'boolean'
  email: attr "string"

  ## ASSOCIATIONS

  user: belongsTo 'user', {async:false}
  devices: hasMany 'device', {async:false}

`export default Company`