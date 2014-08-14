magritte-description
descriptionRoles
	<magritteDescription>
	self userid ifNil: [ ^nil ].
	^QCToManyOptionRelationDescription new
		accessor: #roles;
		label: 'Roles';
		readonly: (self user = self);	" no one is allowed to change his owne roles "
		comment: 'The roles that this user has.';
		priority: 500;
		classes: self roleClasses;
		ownedIn: [ self allRoles ];
		visibleInLabel: false;
		visibleInReport: true;
		yourself