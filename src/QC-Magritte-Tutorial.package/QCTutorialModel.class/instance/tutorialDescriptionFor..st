magritte-description
tutorialDescriptionFor: aChapter
	^MAToManyRelationDescription new
		label: aChapter title;
		accessor: (MAChainAccessor on:(MADictionaryAccessor key: aChapter title) accessor: #tutorials asAccessor);
		priority: aChapter priority;
		sorted: true;
		classes: { QCTutorial };
		yourself