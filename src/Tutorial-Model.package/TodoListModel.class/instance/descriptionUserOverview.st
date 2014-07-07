magritte descriptions
descriptionUserOverview
	<magritteDescription>
	^MAToOneRelationDescription new
		label: 'Users';
		accessor: #userOverview;
		priority: 50;
		classes: { TodoUserOverview };
		beRequired;
		yourself