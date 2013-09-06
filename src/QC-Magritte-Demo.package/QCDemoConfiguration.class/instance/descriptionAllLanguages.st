magritte-description
descriptionAllLanguages
	<magritteDescription>
	^MAToManyRelationDescription new
		label: 'All languages';
		accessor: #allLanguages;
		comment: 'All languages in the system';
		classes: (Array with: QCDemoLanguage);
		priority: 600;
		yourself