*qc-magritte-component
tabDecorationClass
	^self propertyAt: #tabDecorationClass ifAbsent: [ self class defaultTabDecorationClass ]