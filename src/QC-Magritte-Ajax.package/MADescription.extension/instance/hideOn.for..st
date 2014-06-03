*qc-magritte-ajax
hideOn: aBlock for: aDescription 
	(self propertyAt: #hiddenValues ifAbsentPut: [ Dictionary new ]) at: aDescription put: aBlock