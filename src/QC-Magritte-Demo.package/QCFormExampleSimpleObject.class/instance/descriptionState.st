magritte-description
descriptionState
	<magritteDescription>
	^QCDynamicSingleOptionDescription new
		accessor: #state;
		group: 'State';
		priority: 55;
		label: 'State';
		comment: 'The states of the country will be shown if a country is selected';
		options: self stateOptions;
		optionsBlock: [ :memento | self stateOptionsFor: memento ];
		yourself