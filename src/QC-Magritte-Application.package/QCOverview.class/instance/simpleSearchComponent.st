accessing
simpleSearchComponent
	^simpleSearchComponent ifNil: [ simpleSearchComponent := self createSearchComponent ]