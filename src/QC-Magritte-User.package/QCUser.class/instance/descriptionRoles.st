magritte-description
descriptionRoles
	<magritteDescription>
	^MAMultipleOptionDescription new
		accessor: #roles;
		label: 'Roles';
		readonly: (self user = self);
		comment: 'The roles that this user has.';
		priority: 500;
		options: self allRoles;
		visibleInLabel: false;
		visibleInReport: true;
		yourself