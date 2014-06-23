initialization
rootsFor: anObject 
	self user ifNotNil: [ :user | ^user rootsFor: anObject ].
	^anObject magritteDescription children select: [ :each | each isRelationDescription and: [ each isVisible ] ]
	