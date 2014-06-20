accessing
queryComponent
	^queryComponent ifNil: [ queryComponent := self createQueryComponent ]