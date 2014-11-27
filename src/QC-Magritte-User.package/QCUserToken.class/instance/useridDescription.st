magritte-description
useridDescription
	<magritteDescription>
	^MAStringDescription new
		accessor: #userid;
		beRequired;
		requiredErrorMessage: (QCMultilanguageString on: 'You need to input a userid');
		comment: 'Please enter your userid';
		label: 'userid';
		priority: 100;
		reportColumnClass: QCDescribedColumn;
		yourself