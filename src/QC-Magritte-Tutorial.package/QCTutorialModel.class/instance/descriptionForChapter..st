magritte-description
descriptionForChapter: aChapter
	^MAToOneRelationDescription new
		label: aChapter title;
		accessor: (MADictionaryAccessor key: aChapter title);
		priority: aChapter priority;
		classes: { QCChapter };
		yourself