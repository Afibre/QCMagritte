*QC-Magritte-Other
addToAccessor: anAccessor to: aDictionary
	" chains an accessor to an existing accessor. Needed because of extra dictionaries "
	aDictionary ifNil: [ ^nil ].
	aDictionary keysDo: [ :key |
		key addToAccessor: anAccessor ].
	aDictionary rehash.
	^aDictionary