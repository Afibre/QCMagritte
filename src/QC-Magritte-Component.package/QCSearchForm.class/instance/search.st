actions
search
	self canSearch
		ifTrue: [ self report rowFilter: self filterBlock ]
		ifFalse: [ self report rowFilter: nil ]