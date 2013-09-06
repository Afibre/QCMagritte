accessing
queryOptionsComponent
	^queryOptionsComponent ifNil: [  queryOptionsComponent := self buildQueryOptionsComponent ]