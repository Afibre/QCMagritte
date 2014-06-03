accessing
findByTag: aTag
	| foundTag|
	foundTag := tags detect: [:item | item = aTag] ifNone: [nil].
	foundTag isNil ifFalse: [  ^ self ]
			ifTrue: [ ^ nil].
