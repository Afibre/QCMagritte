magritte-description
descriptionProject
	<magritteDescription>
	^QCToOneOptionRelationDescription new
		label: 'Project';
		accessor: #project;
		options: self allProjects;
		priority: 250;
		classes: { TodoProject };
		yourself