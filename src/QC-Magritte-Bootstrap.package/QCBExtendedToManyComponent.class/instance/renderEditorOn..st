rendering
renderEditorOn: html
	self parent hasForm
		ifTrue: [ self renderViewerOn: html ]
		ifFalse: [ html tbsForm: [ self renderViewerOn: html ] ].
	self parent hasForm
		ifTrue: [ self renderButtonsOn: html ]
		ifFalse: [ html tbsForm: [ self renderButtonsOn: html ] ].