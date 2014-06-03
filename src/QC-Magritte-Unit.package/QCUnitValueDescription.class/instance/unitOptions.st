accessing properties
unitOptions
	^self propertyAt: #unitOptions ifAbsent: [ self defaultUnitOptions ]