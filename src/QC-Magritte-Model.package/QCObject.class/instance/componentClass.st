accessing-magritte
componentClass
	self model isNil ifTrue: [ ^self defaultComponentClass ].
	^self model defaultComponentClass