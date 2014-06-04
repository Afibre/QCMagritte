accessing
model
	self parent ifNotNil: [ ^self parent model ].
	^super model