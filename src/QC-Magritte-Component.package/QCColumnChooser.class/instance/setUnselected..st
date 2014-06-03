actions
setUnselected: aList
	aList do: [ :each | each propertyAt: #visible put: false ].
	self report refresh