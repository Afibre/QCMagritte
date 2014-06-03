rendering
renderContainer: aDescription 
	ajaxId := 'ajax', html nextId.
	containerDescription := aDescription.
	html table
		id: ajaxId;
		class: (self classFor: aDescription);
		with: [ self renderContainerContent: aDescription ]