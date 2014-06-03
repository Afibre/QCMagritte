accessing
label
	label ifNotNil: [ ^label ].
	self rootPage ifNotNil: [ ^self rootPage label ].
	^super label