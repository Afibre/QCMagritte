actions
moreOptions: aComponent
	aComponent validate ifTrue: [
		aComponent commit.
		self moreOptions.
		aComponent rebuild ]