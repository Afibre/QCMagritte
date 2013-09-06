actions
search
	self queryComponent validate ifTrue: [ queryComponent := nil ].
	self canSearch
		ifTrue: [ self report rowFilter: self filterBlock ]
		ifFalse: [ self report rowFilter: nil ]