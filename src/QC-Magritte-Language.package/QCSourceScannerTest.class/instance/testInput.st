tests
testInput
	self parse: 'descriptionFirstName
	<magritteDescription>
	^ MAStringDescription new
		accessor: #firstName;
		label: (QCMultilanguageString on: #Name);
		priority: 100;
		beRequired;
		requiredErrorMessage: (QCMultilanguageString on: ''You need to input your first name'');
		comment: (QCMultilanguageString on: ''Please enter your first name'');
		reportColumnClass: QCDescribedColumn;
		propertyAt: #separatorAfter put: '' '';
		yourself' rule: #input