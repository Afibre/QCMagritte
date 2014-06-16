explore
exploreModel
	<tutorial>
	^QCTutorial new
		priority: 70;
		title: 'Model';
		chapter: 'Exploring QCMagritte';
		description: 'The main model of the tutorial application is the "QCTutorialModel". It has a lot of methods, because all texts are included in this class.';
		addExplanation: 'We will limit our explanation to the magritte-descriptions in the class. Please note that the QCTutorialModel has one magritte-description: the description that points to the chapters.';
		addCode: 'descriptionChapters
	<magritteDescription>
	^MAToManyRelationDescription new
		label: ''Chapters'';
		accessor: #chapters;
		priority: 100;
		sorted: true;
		classes: { QCChapter };
		yourself';
		addExplanation: 'It defines that we have a number of "chapters" of type "QCChapter" in our model.';
		yourself
		