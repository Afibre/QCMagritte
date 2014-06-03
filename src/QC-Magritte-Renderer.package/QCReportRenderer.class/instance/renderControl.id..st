rendering
renderControl: aDescription id: anId
	html div
		class: 'report-value';
		with: [ 
			| childComponent |
			childComponent := self childAt: aDescription.
			childComponent isReadonly
				ifTrue: [ html render: childComponent ]
				ifFalse: [
					| script |
					groupDescriptions ifNil: [ script := self createUpdaterFor: aDescription id: anId serialize: (childComponent serializeScriptOn: html) ]
						ifNotNil: [ script := self createUpdaterForList: groupDescriptions id: anId serialize: (childComponent serializeScriptOn: html) group: group ].
			childComponent renderContentOn: html ajaxScript: script ] ]