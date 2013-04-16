initialization
initialize
	(WAAdmin register: self asApplicationAt: 'qcmagritte')
		preferenceAt: #sessionClass put: QCMagritteSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: QCMagritteFileLibrary;
		addLibrary: QCMagritteDemoLibrary