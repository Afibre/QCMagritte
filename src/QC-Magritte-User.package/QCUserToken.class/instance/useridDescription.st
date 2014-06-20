magritte-description
useridDescription
	<magritteDescription>
	^MAStringDescription new
		accessor: #userid;
		beRequired;
		requiredErrorMessage: (QCMultilanguageString on: 'You need to input a userid');
		comment: (QCMultilanguageString on: 'Please enter your userid');
		label: (QCMultilanguageString on: 'userid');
		priority: 100;
		reportColumnClass: QCDescribedColumn;
		yourself