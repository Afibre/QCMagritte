actions
moreOptions: aComponent 
	aComponent validate ifTrue: [
		aComponent commit.
		self selectQuery: self selectQuery moreOptions.
		aComponent rebuild ]