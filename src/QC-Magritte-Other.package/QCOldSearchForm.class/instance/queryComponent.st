accessing
queryComponent
	^queryComponent ifNil: [ queryComponent := self asComponent addValidatedFormWithButtons ]