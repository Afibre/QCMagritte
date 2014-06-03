accessing
queryComponent
	^queryComponent ifNil: [ queryComponent := self buildQueryComponent ]