*qc-magritte-component
commandFormClass
	^self propertyAt: #commandFormClass ifAbsent: [ self class defaultCommandFormClass ]