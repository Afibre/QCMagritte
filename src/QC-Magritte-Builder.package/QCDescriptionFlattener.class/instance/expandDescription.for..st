visiting
expandDescription: aDescription for: aValue
	aValue magritteDescription do: [ :each |
		each group: aDescription label;
			addToAccessor: aDescription accessor;
			priority: aDescription priority + (each priority / 1000).
		buildedDescription add: each ]