magritte descriptions
descriptionProject
	<magritteDescription>
	^QCToOneOptionRelationDescription new
		label: 'Project';
		accessor: #project;
		priority: 250;
		options: self allProjects;
		classes: { TodoProject };
		yourself