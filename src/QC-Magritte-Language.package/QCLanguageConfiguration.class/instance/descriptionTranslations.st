magritte-description
descriptionTranslations
	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #allTranslations;
		label: (QCMultilanguageString on: 'Translations');
		priority: 500;
		comment: (QCMultilanguageString on: 'The translations');
		classes: {QCMultilanguageString};
		ordered: true;
		visibleInReport: false;
		visibleInLabel: false;
		canQueryDescription: false;
		beDefinitive;
		kind: Collection;
		yourself