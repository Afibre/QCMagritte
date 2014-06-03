accessing
optionForString: aValue
	^self options detect: [ :each | (self labelForOption: each) = aValue ] ifNone: [ aValue ]