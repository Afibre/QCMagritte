accessing properties
valueKind
	^self propertyAt: #valueKind ifAbsent: [ self defaultValueKind ]