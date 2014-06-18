class initialization
registerAt: anApplicationName
	^(super registerAt: anApplicationName)
		addLibrary: TBSDeploymentLibrary;
		yourself