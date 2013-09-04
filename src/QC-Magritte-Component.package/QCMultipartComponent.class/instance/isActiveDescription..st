accessing
isActiveDescription: aDescription 
	self activeDescription ifNil: [ activeDescription := aDescription ].
	^self activeDescription = aDescription