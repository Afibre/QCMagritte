magritte-description
descriptionUsername
	<magritteDescription>
	^MAStringDescription new
		accessor: #username;
		beReadonly;
		comment: 'The displayname of the user';
		label: 'User name';
		priority: 60;
		visibleInReport: true;
		visible: (self username notNil);
		yourself