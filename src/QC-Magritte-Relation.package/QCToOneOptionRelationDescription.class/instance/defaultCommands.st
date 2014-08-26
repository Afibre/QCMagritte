accessing
defaultCommands
	|retVal|
	retVal := OrderedCollection new.
	self canSearch ifTrue: [ 
		retVal add: self searchCommand ].
	self canAdd ifTrue: [ 
		retVal add: self addCommand ].
	^retVal