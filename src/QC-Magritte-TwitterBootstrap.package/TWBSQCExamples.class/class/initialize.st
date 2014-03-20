as yet unclassified
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'qc-twitter-bootstrap-examples'.
	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator;
				preferenceAt: #sessionClass put: QCMagritteSession;
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: QCMagritteFileLibrary.
