actions
newInstance
	self selected isParentClass
		ifTrue: [ ^self selected on: self model targetModel ].
	^super newInstance