rendering
renderEditorOn: html
	self hasForm
		ifTrue: [ self renderViewerOn: html ]
		ifFalse: [ html tbsForm: [ self renderViewerOn: html ] ]