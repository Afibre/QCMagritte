testing
hasCompoundField
	self searchField ifEmpty: [ ^false ].
	" note: self searchfield converts this to string, so we do not use the accessor "
	searchField isString ifTrue: [ ^false ].
	^true