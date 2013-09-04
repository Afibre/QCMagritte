actions
setSelected: aList
	| priority |
	aList do: [ :each | 
		each propertyAt: #visible put: true ].
	priority := 100.
	aList do: [ :each | 
		each magritteDescription priority: priority.
		priority := priority + 100 ].
	self report columns sort: [ :a :b | a < b ].
	self report refresh