private
buildReport
	| retVal |
	self magritteDescription startEditAll ifTrue: [ self editAll ].
	retVal := (self reportClass rows: self value description: self reference)
		sortEnabled: self magritteDescription isOrdered not;
		yourself.
	retVal columns do: [ :each | 
		each mementoCache: self cache.
		(each isKindOf: MADescribedColumn) ifTrue: [ 
			self addColumnCommandsTo: each.
			each filter: true ] ].
	retVal showFilter: self magritteDescription showFilter.
	retVal doubleClickCommand: self editCommand.
	^retVal