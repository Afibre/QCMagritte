magritte-description
descriptionTutorials
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Tutorials';
		accessor: #tutorials;
		sorted: true;
		classes: QCTutorial withAllSubclasses;
		visibleInReport: false;
		yourself