class initialization
registerForDevelopment
	^super registerForDevelopment
		addLibrary: QCTutorialLibrary;
		yourself