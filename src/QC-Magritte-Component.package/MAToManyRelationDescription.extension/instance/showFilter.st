*qc-magritte-component
showFilter
	^self propertyAt: #showFilter ifAbsent: [ self class defaultShowFilter ]