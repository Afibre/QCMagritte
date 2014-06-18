actions
registerForDevelopmentAt: anApplicationName
	| application |
	WAAdmin enableDevelopmentTools.
	application := self registerAt: anApplicationName.
	application filter configuration at: #exceptionHandler put: WADebugErrorHandler.
	(#( 'browse' 'welcome' ) includes: WAAdmin defaultDispatcher defaultName)
		ifTrue: [ WAAdmin defaultDispatcher defaultName: anApplicationName ].
	^application