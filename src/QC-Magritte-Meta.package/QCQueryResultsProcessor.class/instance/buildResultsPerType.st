accessing
buildResultsPerType
	| retVal |
	retVal := Dictionary new.
	self results do: [ :each |
		(retVal at: each queryClass ifAbsentPut: [ OrderedCollection new ]) add: each ].
	^retVal