commands
searchCommand
	^self propertyAt: #searchCommand ifAbsent: [ self defaultSearchCommand ]