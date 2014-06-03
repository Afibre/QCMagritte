accessing properties
updateOptionsWith: aMemento
	self unitOptionsBlock
		ifNotNil: [ self unitOptions: (self unitOptionsBlock cull: aMemento cull: self unitOptions) ]