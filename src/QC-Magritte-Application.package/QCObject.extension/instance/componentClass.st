*qc-magritte-application
componentClass
	self model isNil ifTrue: [ ^self defaultComponentClass ].
	(self model respondsTo: #defaultComponentClass) ifFalse: [ ^self defaultComponentClass ].
	^self model defaultComponentClass