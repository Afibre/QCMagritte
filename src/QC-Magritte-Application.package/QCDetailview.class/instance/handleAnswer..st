actions
handleAnswer: anAnswer
	self parent 
		ifNil: [ magritteComponent := nil ]
		ifNotNil: [ self closeOn: anAnswer ]