magritte-description
descriptionRights
	<magritteDescription>
	^MAToManyRelationDescription new
		label: 'Rights';
		accessor: #rights;
		comment: 'The rights of the role';
		classes: { QCUserRight };
		ordered: true;
		priority: 200;
		visibleInLabel: false;
		yourself