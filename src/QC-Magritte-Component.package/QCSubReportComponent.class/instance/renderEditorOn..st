rendering
renderEditorOn: html
	self parent hasForm
		ifTrue: [ self renderViewerOn: html ]
		ifFalse: [ html form: [ self renderViewerOn: html ] ]