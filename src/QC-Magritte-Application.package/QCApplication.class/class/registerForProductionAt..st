actions
registerForProductionAt: anApplicationName
	| application |
	application := (WAAdmin register: self asApplicationAt: anApplicationName)
		preferenceAt: #sessionClass put: self sessionClass;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		yourself.
	WAAdmin disableDevelopmentTools.
	WAAdmin defaultDispatcher defaultName: anApplicationName.
	^application