hooks
children
	self hasSearchForm ifTrue: [ ^super children copyWithAll: 
		(Array with: self simpleSearchComponent with: self queryOptionsComponent) ].
	^super children copyWith: self queryOptionsComponent