class initialization
initialize
	"
	QCBExamples initialize
	"
	(WAAdmin register: self asApplicationAt: 'qc-bootstrap-examples')
		preferenceAt: #scriptGeneratorClass put: JQScriptGenerator;
		preferenceAt: #sessionClass put: QCSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: TBSDevelopmentLibrary;
		addLibrary: QCMagritteFileLibrary;
		addLibrary: QCMagritteDemoLibrary