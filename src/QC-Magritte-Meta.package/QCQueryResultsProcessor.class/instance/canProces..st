accessing
canProces: anObject
	(anObject canQuery and: [ (self processed includes: anObject) not ]) ifTrue: [ 
		self processed add: anObject.
		^true ].
	^false