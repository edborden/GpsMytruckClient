class HosCheckComponent extends Ember.Component

  tagName: 'span'
  classNames: ['bordered','click-fix']
  classNameBindings: ["device.hos:green:red"]
  device:null
  saveModel: 'saveModel'

  click: ->
    @device.toggleProperty 'hos'
    @sendAction 'saveModel', @device

`export default HosCheckComponent`