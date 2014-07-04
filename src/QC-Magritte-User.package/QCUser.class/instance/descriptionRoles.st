magritte-description
descriptionRoles
	<magritteDescription>
	^QCToManyOptionRelationDescription new
		accessor: #roles;
		label: 'Roles';
		readonly: (self user = self);
		comment: 'The roles that this user has.';
		priority: 500;
		classes: { self roleClasses };
		options: self allRoles;
		visibleInLabel: false;
		visibleInReport: true;
		yourself