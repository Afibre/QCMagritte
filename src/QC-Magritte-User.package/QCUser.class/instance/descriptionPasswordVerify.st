magritte-description
descriptionPasswordVerify
	<magritteDescription>
	passwordHash ifNotNil: [ ^nil ].
	^MAPasswordDescription new
		accessor: #passwordVerify;
		readonly: passwordHash notNil;
		beRequired;
		requiredErrorMessage: 'You need to input a password verification';
		comment: 'Please retype your password for verification';
		label: 'Password (Check)';
		priority: 210;
		visibleInReport: false;
		yourself