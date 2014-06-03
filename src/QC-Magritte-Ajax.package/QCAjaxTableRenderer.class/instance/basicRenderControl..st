rendering
basicRenderControl: aDescription
	| childComponent |
	childComponent := self childAt: aDescription.
	childComponent isReadonly
		ifTrue: [ html render: childComponent ]
		ifFalse: [
			| script |
			script := self createUpdaterFor: aDescription id: ajaxId serialize: (childComponent serializeScriptOn: html).
			childComponent renderContentOn: html ajaxScript: script ]