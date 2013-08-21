convenience
allStrings
	^(self allCallsOnIn: SystemNavigation default) inject: Set new into: [ :allStrings :each |
		self addStringsIn: each to: allStrings ]