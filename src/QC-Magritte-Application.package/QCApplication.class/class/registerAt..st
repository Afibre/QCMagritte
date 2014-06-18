actions
registerAt: anApplicationName
	^(WAAdmin register: self asApplicationAt: anApplicationName)
		preferenceAt: #sessionClass put: self sessionClass;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		yourself