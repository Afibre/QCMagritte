rendering
stringFor: anObject
	anObject isString ifTrue: [ ^anObject ].
	anObject isCollection ifTrue: [
		^String streamContents: [ :s |
			anObject do: [ :each | s nextPutAll: (self labels value: each) ] separatedBy: [ s lf ] ] ].
	^super stringFor: anObject