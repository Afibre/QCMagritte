magritte-description
passwordDescription
	<magritteDescription>
	^MAPasswordDescription new
		accessor: #password;
		beRequired;
		requiredErrorMessage: (QCMultilanguageString on: 'You need to input a password');
		comment: (QCMultilanguageString on: 'Please enter your password');
		label: (QCMultilanguageString on: 'password');
		priority: 200;
		visibleInReport: false;
		yourself