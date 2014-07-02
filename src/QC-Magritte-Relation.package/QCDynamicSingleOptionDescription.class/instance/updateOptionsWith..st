accessing
updateOptionsWith: aMemento
	self optionsBlock ifNotNil: [ self options: (self optionsBlock cull: aMemento) ]