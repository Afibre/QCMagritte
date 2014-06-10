magritte descriptions
descriptionName
	<magritteDescription>
	^ MAStringDescription new
		priority: 10;
		label: 'Name';
		accessor: #firstName;
		beRequired;
		requiredErrorMessage: 'We cannot proceed without a name.';
		comment: 'Please enter your name';
		placeholder: 'your name';
		yourself