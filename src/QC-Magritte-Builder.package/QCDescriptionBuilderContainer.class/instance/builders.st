accessing
builders
	^builders ifNil: [ builders := SortedCollection sortBlock: 
		[:a :b | a priority < b priority] ]