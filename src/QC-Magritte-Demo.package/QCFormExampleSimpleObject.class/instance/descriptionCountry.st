magritte-description
descriptionCountry
	<magritteDescription>
	^MASingleOptionDescription new
		accessor: #state;
		group: 'State';
		priority: 50;
		label: 'Country';
		comment: 'Please select a country';
		options: self countryOptions;
		yourself