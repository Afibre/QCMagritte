accessing
hasRemoveRightFor: aClass
	^(self rightsClass = aClass) and: [ self crud includes: 'D' ]