*qc-magritte-renderer
renderContentOn: html ajaxScript: aScript
	self isReadonly
		ifTrue: [ self renderViewerOn: html ]
		ifFalse: [ self renderEditorOn: html ajaxScript: aScript ]