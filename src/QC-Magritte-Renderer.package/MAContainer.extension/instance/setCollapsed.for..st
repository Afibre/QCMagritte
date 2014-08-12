*qc-magritte-renderer
setCollapsed: aBoolean for: aGroup
	aBoolean
		ifTrue: [ | collapsedGroups |
			collapsedGroups := (self propertyAt: #collapsedGroups ifAbsentPut: OrderedCollection new).
			(collapsedGroups includes: aGroup) ifFalse: [ collapsedGroups add: aGroup ] ]
		ifFalse: [ (self propertyAt: #collapsedGroups ifAbsent: [ OrderedCollection new ])
			remove: aGroup ifAbsent: [] ]