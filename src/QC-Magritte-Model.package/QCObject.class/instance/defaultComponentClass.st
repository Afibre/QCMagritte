accessing-magritte
defaultComponentClass
	(self model isNil or: [ self model = self ])
		ifTrue: [ ^QCMultiPartComponent ].
	^self model defaultComponentClass