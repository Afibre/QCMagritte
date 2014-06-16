rendering
renderEditorOn: html
	self parent hasForm
		ifTrue: [ self renderViewerOn: html ]
		ifFalse: [ html form: [ self renderViewerOn: html ] ].
	self parent hasForm
		ifTrue: [ self renderButtonsOn: html ]
		ifFalse: [ html form: [ self renderButtonsOn: html ] ].
	