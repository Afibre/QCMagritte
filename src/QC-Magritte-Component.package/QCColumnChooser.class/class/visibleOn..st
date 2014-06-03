instance creation
visibleOn: aComponent 
	^ self basicNew
		initialize: aComponent;
		yourself