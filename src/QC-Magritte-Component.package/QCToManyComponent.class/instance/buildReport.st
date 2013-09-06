private
buildReport
	| retVal |
	retVal := (self reportClass rows: self value description: self reference)
		sortEnabled: self magritteDescription isOrdered not;
		yourself.
	retVal columns do: [ :each | 
		each mementoCache: self cache.
		(each isKindOf: MADescribedColumn) ifTrue: [ 
			self addColumnCommandsTo: each.
			each filter: true ] ].
	retVal showFilter: true.
	retVal doubleClickCommand: (QCCommand on: (QCMultilanguageString on: 'edit')
		image: self editIcon
		condition: [ :row | self canEdit: row ]
		action: [ :row | self edit: row ]).
	^retVal