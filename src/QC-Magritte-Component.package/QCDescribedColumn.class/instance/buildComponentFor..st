initialization
buildComponentFor: anObject
	| magritteDescription |
	magritteDescription := anObject magritteDescription detect: [ :each | each = self magritteDescription ] ifNone: [ nil ].
	magritteDescription
		ifNil: [ magritteDescription := self magritteDescription ]
		ifNotNil: [ 
			| builder |
			builder := anObject magritteDescription descriptionBuilder.
			builder ifNotNil: [ magritteDescription := builder buildFrom: magritteDescription target: anObject model: anObject model ] ].
	^magritteDescription componentClass
		memento: (self mementoCache at: anObject) description: magritteDescription parent: anObject magritteDescription