accessing
rightsForClass: aClass 
	| rightsClass |
	(self hasClassUserRights: aClass) ifFalse: [ ^#( 'C' 'R' 'U' 'D' ) ].
	rightsClass := aClass.
	[ (self hasClassUserRights: rightsClass) ] whileTrue: [ 
		| userRight |
		userRight := (self rights detect: [ :each | each rightsClass = aClass ] ifNone: [ nil ]).
		userRight ifNotNil: [ ^userRight crud ].
		rightsClass := rightsClass superclass ].
	^#()
	