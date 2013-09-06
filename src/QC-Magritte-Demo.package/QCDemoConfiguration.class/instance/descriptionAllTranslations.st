magritte-description
descriptionAllTranslations
	<magritteDescription>
	^MAToManyRelationDescription new
		label: 'All translations';
		accessor: #allTranslations;
		comment: 'All translations in the system';
		classes: (Array with: QCMultilanguageString);
		beDefinitive;
		priority: 700;
		yourself