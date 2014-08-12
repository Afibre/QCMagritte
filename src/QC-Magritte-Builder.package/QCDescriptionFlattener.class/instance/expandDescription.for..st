visiting
expandDescription: aDescription for: aValue
	aValue magritteDescription do: [ :each |
		| val |
		val := aValue readUsing: each.
		each group: aDescription label;
			addToAccessor: aDescription accessor;
			priority: aDescription priority + (each priority / 1000).
		each canExpand
			ifTrue: [ self expandDescription: each for: val ]
			ifFalse: [ buildedDescription add: each  ] ]