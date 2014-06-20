magritte-description
descriptionRoles
	<magritteDescription>
	^ MAToManyRelationDescription new
		priority: 300;
		label: 'Roles';
		accessor: #roles;
		classes: self roleClasses;
		ordered: true;
		comment: 'Custom user roles';
		visibleInLabel: false;
		yourself