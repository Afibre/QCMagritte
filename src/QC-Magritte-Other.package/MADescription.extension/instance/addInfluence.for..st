*QC-Magritte-Other
addInfluence: aBlock for: aDescription 
	" blocks that are executed by the AJAXMemento, when the value of the description changes "
	(self propertyAt: #influencedValues ifAbsentPut: [ Dictionary new ]) at: aDescription put: aBlock