class initialization
registerForDevelopmentAt: anApplicationName
	^(super registerForDevelopmentAt: anApplicationName)
		addLibrary: QCTutorialLibrary;
		yourself