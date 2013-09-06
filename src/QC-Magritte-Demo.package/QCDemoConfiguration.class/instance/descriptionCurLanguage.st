magritte-description
descriptionCurLanguage
	<magritteDescription>
	^MASingleOptionDescription new
		label: 'Current language';
		accessor: #curLanguage;
		comment: 'The current language used in the system';
		options: self allLanguages;
		priority: 100;
		yourself