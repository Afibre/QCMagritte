magritte-description
descriptionLanguages
	<magritteDescription>
	^ MAToManyRelationDescription new
		priority: 500;
		label: 'Languages';
		accessor: #allLanguages;
		classes: { QCLanguage };
		comment: 'All languages';
		componentClass: QCToManyComponent;
		visibleInLabel: false;
		yourself