magritte descriptions
descriptionTeamMembers
	<magritteDescription>
	^QCToManyOptionRelationDescription new
		label: 'Team';
		accessor: #teamMembers;
		priority: 350;
		classes: { TodoUser };
		ownedIn: [ self allProjectUsers ];
		yourself