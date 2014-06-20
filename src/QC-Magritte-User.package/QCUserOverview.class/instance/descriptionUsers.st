magritte-description
descriptionUsers
	<magritteDescription>
	^ MAToManyRelationDescription new
		priority: 300;
		label: 'Users';
		accessor: #users;
		classes: self userClasses;
		ordered: true;
		comment: 'All users';
		canAddBlock: [ self canAddUser ];
		visibleInLabel: false;
		yourself