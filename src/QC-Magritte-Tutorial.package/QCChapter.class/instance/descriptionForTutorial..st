accessing-magritte
descriptionForTutorial: aTutorial
	^MAToOneRelationDescription new
		label: aTutorial title;
		accessor: (MADictionaryAccessor key: aTutorial title);
		priority: 1000 + aTutorial priority;
		classes: { QCTutorial };
		yourself