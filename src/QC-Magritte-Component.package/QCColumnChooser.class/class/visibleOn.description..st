instance creation
visibleOn: aComponent description: aDescription
	^ self basicNew
		initialize: aComponent;
		yourself