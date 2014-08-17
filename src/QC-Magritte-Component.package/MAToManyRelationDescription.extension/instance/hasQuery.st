*qc-magritte-component
hasQuery
	^self propertyAt: #hasQuery ifAbsent: [ self defaultHasQuery ]