magritte-description
descriptionLanguages
	<magritteDescription>
	^ MAToManyRelationDescription new
		priority: 500;
		label: 'Languages';
		accessor: #allLanguages;
		classes: {QCLanguage};
		ordered: true;
		comment: 'All languages';
		visibleInLabel: false;
		yourself