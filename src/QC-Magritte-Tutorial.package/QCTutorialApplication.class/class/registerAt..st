class initialization
registerAt: anApplicationName
	^(super registerAt: anApplicationName)
		addLibrary: QCTutorialLibrary;
		yourself