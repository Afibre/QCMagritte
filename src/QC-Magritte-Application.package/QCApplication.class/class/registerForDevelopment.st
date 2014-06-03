actions
registerForDevelopment
	| application |
	WAAdmin enableDevelopmentTools.
	application := (WAAdmin register: self asApplicationAt: self applicationName)
		preferenceAt: #sessionClass put: self sessionClass;
		addLibrary: JQDevelopmentLibrary;
		addLibrary: JQUiDevelopmentLibrary;
		yourself.
	application filter configuration at: #exceptionHandler put: WADebugErrorHandler.
	(#( 'browse' 'welcome' ) includes: WAAdmin defaultDispatcher defaultName)
		ifTrue: [ WAAdmin defaultDispatcher defaultName: self applicationName ].
	^application