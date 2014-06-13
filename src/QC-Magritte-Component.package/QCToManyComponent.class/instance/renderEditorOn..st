rendering
renderEditorOn: html
	self parent hasForm
		ifTrue: [ self renderViewerOn: html ]
		ifFalse: [ html form: [ self renderViewerOn: html ] ]
	" buttons are generated in content, as they need to be generated always "