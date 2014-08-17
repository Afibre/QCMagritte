*qc-magritte-component
hasQuery
	^self propertyAt: #hasQuery ifAbsent: [ self class defaultHasQuery ]