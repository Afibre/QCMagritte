actions
simplify: aComponent 
	aComponent validate ifTrue: [
		aComponent commit.
		self selectQuery: self selectQuery simplify.
		aComponent rebuild ]