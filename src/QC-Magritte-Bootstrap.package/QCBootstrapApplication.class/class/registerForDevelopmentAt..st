class initialization
registerForDevelopmentAt: anApplicationName
	^(super registerForDevelopmentAt: anApplicationName)
		addLibrary: TBSDeploymentLibrary;
		yourself