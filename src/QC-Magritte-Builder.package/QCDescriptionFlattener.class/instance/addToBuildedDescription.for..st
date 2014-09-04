visiting
addToBuildedDescription: aDescription for: aValue
	"aValue is the intermediate value that can be processed by further expansion"
		(aDescription label beginsWith: 'Add' ) ifTrue: [self halt].
		aDescription canExpand
			ifTrue: [ self expandDescription: aDescription for: aValue ]
			ifFalse: [ buildedDescription add: aDescription  ]