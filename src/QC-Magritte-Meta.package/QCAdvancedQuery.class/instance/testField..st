running
testField: aDescription 
	self searchField ifEmpty: [ ^true ].
	self hasCompoundField ifFalse: [ ^aDescription label matches: self searchField ].
	" note: self searchfield converts this to a string, so do not use the accessor "
	^aDescription label matches: searchField first