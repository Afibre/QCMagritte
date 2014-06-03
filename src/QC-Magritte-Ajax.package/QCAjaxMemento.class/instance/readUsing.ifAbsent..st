accessing
readUsing: aDescription ifAbsent: aBlock
	aDescription isWrapped ifTrue: [ ^aDescription readFor: self ].
	^super readUsing: aDescription ifAbsent: aBlock