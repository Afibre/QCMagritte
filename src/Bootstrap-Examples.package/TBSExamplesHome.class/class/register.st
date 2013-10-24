registration
register

	|app|
	app := WAAdmin register: self asApplicationAt: 'bootstrap'.
	app 
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDevelopmentLibrary;
		addLibrary: TBSExamplesLibrary