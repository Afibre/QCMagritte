accessing
unit
	self value ifNil: [ ^nil ].
	self value isNumber ifTrue: [ ^nil ].
	self value isString ifTrue: [ ^nil ].
	^self value unit