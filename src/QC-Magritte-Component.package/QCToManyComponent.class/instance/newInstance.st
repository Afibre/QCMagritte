actions
newInstance
	(self selected respondsTo: #isParentClass) ifFalse: [ ^self selected new ].
	self selected isParentClass
		ifTrue: [ ^self selected on: self actualModel ].
	^self selected new