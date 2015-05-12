class AuditLinkComponent extends Ember.Component

	start: null
	end: null
	device: null

	tagName: 'a'
	attributeBindings: ['href']

	href: ~> @device.auditLink + "&start=#{@start}&end=#{@end}"

`export default AuditLinkComponent`