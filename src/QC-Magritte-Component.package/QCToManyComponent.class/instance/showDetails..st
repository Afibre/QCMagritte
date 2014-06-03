actions
showDetails: anObject
	self root 
		call: (self validatedFormOn: anObject forOperation: 'Details')
		onAnswer: [ :answer | self refresh ]