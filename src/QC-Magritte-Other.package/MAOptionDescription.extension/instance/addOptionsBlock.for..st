*QC-Magritte-Other
addOptionsBlock: aBlock for: aDescription
	(self propertyAt: #optionsBlocks ifAbsentPut: [ Dictionary new ]) at: aDescription put: aBlock