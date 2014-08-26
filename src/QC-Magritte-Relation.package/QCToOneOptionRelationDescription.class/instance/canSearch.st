testing
canSearch
	^(self ownedIn notNil) and: [ self propertyAt: #canSearch ifAbsent: [ true ] ]