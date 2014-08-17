*qc-magritte-component
canExport
	^self propertyAt: #canExport ifAbsent: [ self class defaultCanExport ]