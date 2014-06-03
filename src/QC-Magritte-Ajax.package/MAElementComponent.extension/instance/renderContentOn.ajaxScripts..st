*qc-magritte-ajax
renderContentOn: html ajaxScripts: aScripts 
	self isReadonly
		ifTrue: [ self renderViewerOn: html ]
		ifFalse: [ self renderEditorOn: html ajaxScripts: aScripts ]