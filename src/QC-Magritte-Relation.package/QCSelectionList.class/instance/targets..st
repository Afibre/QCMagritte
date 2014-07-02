accessing
targets: aCollection
	self items: (aCollection collect: [ :each | QCSelection on: each ])