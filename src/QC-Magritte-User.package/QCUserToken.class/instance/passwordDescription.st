magritte-description
passwordDescription
	<magritteDescription>
	^MAPasswordDescription new
		accessor: #password;
		beRequired;
		requiredErrorMessage: (QCMultilanguageString on: 'You need to input a password');
		comment: 'Please enter your password';
		label: 'password';
		priority: 200;
		visibleInReport: false;
		yourself