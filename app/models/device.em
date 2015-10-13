`import config from 'gps-mytruck-client/config/environment'`
`import ModelName from 'gps-mytruck-client/mixins/model-name'`

attr = DS.attr
belongsTo = DS.belongsTo
hasMany = DS.hasMany

service = Ember.inject.service
computed = Ember.computed

class Device extends DS.Model with ModelName

  session: service()

  ## ATTRIBUTES

  hardwareId: attr "string"
  truckId: attr "string"
  locationsCount: attr 'number'

  ## ASSOCIATIONS

  company: belongsTo 'company', {async:false}

  ## COMPUTED

  auditLink: computed -> "#{config.apiHostName}/devices/#{@id}/locations.csv?token=#{@session.token}"
  name: computed -> @truckId or @hardwareId

`export default Device`