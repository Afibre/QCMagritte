actions
search
	self validate ifFalse: [ ^self ].
	self commit.
	self searchAction
		ifNil: [ self answer: nil ]
		ifNotNil: [ self searchAction value ]
	