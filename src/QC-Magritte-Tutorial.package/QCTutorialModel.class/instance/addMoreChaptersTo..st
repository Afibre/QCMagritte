initialization
addMoreChaptersTo: aDictionary
	{ QCTutChapterExplore. QCTutChapterHelloWorld. QCTutChapterInstallation. QCTutChapterToDoList. QCTutChapterUserManagement. QCTutChapterApplication. QCTutChapterAddingProjects  } do: [  :aTutorialChapter |
	((Pragma 
		allNamed: self class chapterPragma 
		from: aTutorialChapter to: Object) collect: [ :each | aTutorialChapter new perform: each method selector ]) do: [ 
			:each | 
				each parent:self.
				aDictionary at: each title put: each ].
	((Pragma 
		allNamed: self class tutorialPragma 
		from: aTutorialChapter to: Object) collect: [ :each | aTutorialChapter new perform: each method selector ]) do: [ 
			:each | (aDictionary at: each chapter ifAbsent: [ QCTutorialInitializationError signal: 'Cannot find chapter ', each chapter asString, ' for tutorial ', each title asString ]) addTutorial: each ]].
	^aDictionary
