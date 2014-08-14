accessing
applicationModel
	self model ifNil: [ ^nil ].
	^self model model