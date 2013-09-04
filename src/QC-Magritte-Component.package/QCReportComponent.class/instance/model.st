accessing
model
	self rows ifEmpty: [ ^nil ].
	^self rows first model