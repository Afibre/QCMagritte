magritte-description
descriptionPasswordVerify
	<magritteDescription>
	^MAPasswordDescription new
		accessor: #passwordVerify;
		readonly: passwordHash notNil;
		beRequired;
		requiredErrorMessage: 'You need to input a password verification';
		comment: 'Please retype your password for verification';
		label: 'password';
		priority: 200;
		visible: (passwordHash isNil);
		visibleInReport: false;
		yourself