*qc-magritte-ajax
addInfluence: aBlock forAll: aDescriptionSymbolCollection in: aSubject
	" blocks that are executed by the AJAXMemento, when the value of any of the descriptions changes "
	aDescriptionSymbolCollection do: [ :symbol | 
		self addInfluence: aBlock for: (aSubject perform: symbol) ]