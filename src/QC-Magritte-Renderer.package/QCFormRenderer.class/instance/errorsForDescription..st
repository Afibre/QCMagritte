accessing
errorsForDescription: aDescription 
	| current retVal |
	retVal := OrderedCollection new.
	current := component.
	[ current notNil ] whileTrue: [
		current isMagritteContainer ifTrue: [
			retVal addAll: (current errors select: [ :each |
				each tag isDescription ]) ].
		current := current parent ].
	^retVal