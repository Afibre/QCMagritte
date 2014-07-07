accessing
model
	self rows ifEmpty: [ ^nil ].
	^self rows anyOne model