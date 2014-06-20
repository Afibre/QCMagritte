magritte-description
descriptionName
	<magritteDescription>
	^MAStringDescription new
		label: 'Name';
		accessor: #roleName;
		comment: 'The name of the role';
		priority: 10;
		beRequired;
		visibleInLabel: true;
		yourself