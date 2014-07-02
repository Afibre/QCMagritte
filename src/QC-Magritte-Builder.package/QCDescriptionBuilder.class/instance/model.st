accessing
model
	self target ifNil: [ ^nil ].
	self target isCollection ifTrue: [
		self target
			ifEmpty: [ ^nil ]
			ifNotEmpty: [ ^self target anyOne model ] ].
	^self target model