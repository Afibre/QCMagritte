accessing
hasUpdateRightFor: aClass
	^(self rightsClass = aClass) and: [ self crud includes: 'U' ]