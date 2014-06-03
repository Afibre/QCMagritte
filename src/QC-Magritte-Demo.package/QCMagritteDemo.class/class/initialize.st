initialization
initialize
	(WAAdmin register: self asApplicationAt: 'qcmagritte')
		preferenceAt: #sessionClass put: QCSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: QCMagritteFileLibrary;
		addLibrary: QCMagritteDemoLibrary