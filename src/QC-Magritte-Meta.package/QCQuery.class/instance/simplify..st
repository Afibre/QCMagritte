actions
simplify: aComponent 
	aComponent validate ifTrue: [
		aComponent commit.
		self simplify.
		aComponent rebuild ]