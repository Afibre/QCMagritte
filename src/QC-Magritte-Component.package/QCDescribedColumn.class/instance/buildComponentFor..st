initialization
buildComponentFor: anObject
	| magritteDescription |
	magritteDescription := anObject magritteDescription detect: [ :each | each = self magritteDescription ] ifNone: [ self magritteDescription ].
	^magritteDescription componentClass
		memento: (self mementoCache at: anObject) description: magritteDescription parent: anObject magritteDescription