accessing
simpleSearchComponent
	^simpleSearchComponent ifNil: [ simpleSearchComponent := self createSimpleSearchForm ]