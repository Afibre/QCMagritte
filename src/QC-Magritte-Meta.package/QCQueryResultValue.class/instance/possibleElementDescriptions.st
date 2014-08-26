accessing-magritte
possibleElementDescriptions
	self operation ifNil: [ ^#() ].
	self targetDescription ifNil: [ ^#() ].
	^self operation selectValidDescriptions: self targetDescription commonClass magritteTemplate magritteDescription children