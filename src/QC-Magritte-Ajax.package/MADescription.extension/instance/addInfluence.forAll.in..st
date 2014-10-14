*qc-magritte-ajax
addInfluence: aBlock forAll: aDescriptionSymbolCollection in: aSubject
	" blocks that are executed by the AJAXMemento, when the value of the description changes "
	aDescriptionSymbolCollection do: [ :symbol | 
		(self propertyAt: #influencedValues ifAbsentPut: [ Dictionary new ]) 
			at: (aSubject perform: symbol) put: aBlock ]