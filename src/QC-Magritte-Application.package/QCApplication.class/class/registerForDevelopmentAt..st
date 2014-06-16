actions
registerForDevelopmentAt: anApplicationName
	| application |
	WAAdmin enableDevelopmentTools.
	application := (WAAdmin register: self asApplicationAt: anApplicationName)
		preferenceAt: #sessionClass put: self sessionClass;
		addLibrary: JQDevelopmentLibrary;
		addLibrary: JQUiDevelopmentLibrary;
		yourself.
	application filter configuration at: #exceptionHandler put: WADebugErrorHandler.
	(#( 'browse' 'welcome' ) includes: WAAdmin defaultDispatcher defaultName)
		ifTrue: [ WAAdmin defaultDispatcher defaultName: anApplicationName ].
	^application