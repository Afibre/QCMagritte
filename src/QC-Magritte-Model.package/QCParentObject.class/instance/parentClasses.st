accessing-magritte
parentClasses
	self parent ifNil: [ ^{ QCObject } ].
	^{ self parent class }