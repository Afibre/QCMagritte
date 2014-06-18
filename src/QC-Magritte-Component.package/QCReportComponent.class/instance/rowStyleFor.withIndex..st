accessing-settings
rowStyleFor: aRow withIndex: anIndex
	| retVal |
	retVal := self rowStyleForNumber: anIndex.
	(aRow = activeRow) ifTrue: [ 
		retVal
			ifNil: [ retVal := self activeStyle ]
			ifNotNil: [ retVal := retVal, ' ', self activeStyle ] ].
	^retVal