accessing
componentClass
	^ self propertyAt: #componentClass ifAbsent: [ self wrappedDescription class defaultComponentClass ]