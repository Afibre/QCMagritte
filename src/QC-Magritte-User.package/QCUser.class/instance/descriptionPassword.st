magritte-description
descriptionPassword
	<magritteDescription>
	^MAPasswordDescription new
		accessor: #password;
		readonly: passwordHash notNil;
		beRequired;
		requiredErrorMessage: 'You need to input a password';
		comment: 'Please enter your password';
		label: 'password';
		priority: 200;
		visible: (passwordHash isNil);
		visibleInReport: false;
		yourself