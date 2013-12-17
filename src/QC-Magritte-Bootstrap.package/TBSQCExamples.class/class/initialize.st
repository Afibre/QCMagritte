class initialization
initialize
	"
	TBSQCExamples initialize
	"
	(WAAdmin register: self asApplicationAt: 'qc-bootstrap-examples')
		preferenceAt: #scriptGeneratorClass put: JQScriptGenerator;
		preferenceAt: #sessionClass put: QCMagritteSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: TBSDevelopmentLibrary;
		addLibrary: QCMagritteFileLibrary;
		addLibrary: QCMagritteDemoLibrary