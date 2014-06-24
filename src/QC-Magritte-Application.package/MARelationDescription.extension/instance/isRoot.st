*qc-magritte-application
isRoot
	^self propertyAt: #isRoot ifAbsent: [ self defaultIsRoot ]