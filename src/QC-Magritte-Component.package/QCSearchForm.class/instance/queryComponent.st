accessing
queryComponent
	^queryComponent ifNil: [ queryComponent := self asComponent
			searchAction: [ self search ];
			addValidatedFormWithButtons ]