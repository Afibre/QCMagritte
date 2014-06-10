accessing-magritte
componentRenderer
	self model isNil ifTrue: [ ^self defaultComponentRenderer ].
	^self model defaultComponentRenderer