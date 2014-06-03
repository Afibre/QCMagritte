convenience
allSourceCode
	^(self allCallsOnIn: SystemNavigation default) inject: Set new into: [ :allStrings :each |
		self addSourceIn: each to: allStrings ]