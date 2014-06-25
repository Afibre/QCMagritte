*qc-magritte-application
componentRenderer
	self model isNil ifTrue: [ ^self defaultComponentRenderer ].
	(self model respondsTo: #defaultComponentRenderer) ifFalse: [ ^self defaultComponentRenderer ].
	^self model defaultComponentRenderer