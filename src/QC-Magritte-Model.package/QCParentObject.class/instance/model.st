accessing
model
	self parent ifNotNil: [ ^self parent model ].
	^nil