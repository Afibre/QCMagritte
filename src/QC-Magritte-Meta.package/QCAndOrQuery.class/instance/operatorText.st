accessing
operatorText
	self isAndQuery 
		ifTrue: [ ^QCMultilanguageString on: 'and' ]
		ifFalse: [ ^QCMultilanguageString on: 'or' ]