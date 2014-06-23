testing
showsObject: anObject 
	^self pages contains: [ :each | each showsObject: anObject ]