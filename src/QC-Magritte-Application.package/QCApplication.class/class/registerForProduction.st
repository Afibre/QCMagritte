actions
registerForProduction
	| application |
	application := (WAAdmin register: self asApplicationAt: self applicationName)
		preferenceAt: #sessionClass put: self sessionClass;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		yourself.
	WAAdmin disableDevelopmentTools.
	WAAdmin defaultDispatcher defaultName:self applicationName.
	^application