attr = DS.attr

class Device extends DS.Model
	hardwareId:attr()
	company: DS.belongsTo 'company'
	modelName: "Device"

`export default Device`