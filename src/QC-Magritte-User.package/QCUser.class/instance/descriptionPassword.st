magritte-description
descriptionPassword
	<magritteDescription>
	passwordHash ifNotNil: [ ^nil ].
	^MAPasswordDescription new
		accessor: #password;
		readonly: passwordHash notNil;
		beRequired;
		requiredErrorMessage: 'You need to input a password';
		comment: 'Please enter your password';
		label: 'Password';
		priority: 200;
		visibleInReport: false;
		yourself