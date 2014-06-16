magritte-description
descriptionChapters
	<magritteDescription>
	^MAToManyRelationDescription new
		label: 'Chapters';
		accessor: #chapters;
		priority: 100;
		sorted: true;
		beReadonly;
		classes: { QCChapter };
		yourself