*QC-Magritte-Other
canAddBlock
	^self propertyAt: #canAddBlock ifAbsent: [ self class defaultCanAddBlock ]