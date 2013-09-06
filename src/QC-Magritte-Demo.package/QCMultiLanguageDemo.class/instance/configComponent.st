accessing
configComponent
	^configComponent ifNil: [ configComponent := QCDemoConfiguration default asComponent addValidatedForm ]