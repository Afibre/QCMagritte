actions
registerForDevelopmentAt: anApplicationName
	| application |
	WAAdmin enableDevelopmentTools.
	application := self registerAt: anApplicationName.
	application filter configuration at: #exceptionHandler put: WADebugErrorHandler.
	(self overridesDefaults includes: WAAdmin defaultDispatcher defaultName)
		ifTrue: [ WAAdmin defaultDispatcher defaultName: anApplicationName ].
	^application