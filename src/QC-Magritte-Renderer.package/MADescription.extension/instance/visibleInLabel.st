*qc-magritte-renderer
visibleInLabel
	^self propertyAt: #visibleInLabel ifAbsent: [ self isVisible ]