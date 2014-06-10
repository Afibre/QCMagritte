initialization
createChapters
	| retVal |
	retVal := Dictionary new.
	((Pragma 
		allNamed: self class chapterPragma 
		from: self class to: Object) collect: [ :each | self perform: each method selector ]) do: [ 
			:each | retVal at: each title put: each ].
	((Pragma 
		allNamed: self class tutorialPragma 
		from: self class to: Object) collect: [ :each | self perform: each method selector ]) do: [ 
			:each | (retVal at: each chapter ifAbsent: [ QCTutorialInitializationError signal: 'Cannot find chapter ', each chapter asString, ' for tutorial ', each title asString ]) addTutorial: each ].
	^retVal values asSortedCollection: [ :a :b |
		a priority < b priority ]
