accessing
rightsForClass: aClass 
	^self rights detect: [ :each | each rightsClass = aClass ] ifNone: [ #() ]