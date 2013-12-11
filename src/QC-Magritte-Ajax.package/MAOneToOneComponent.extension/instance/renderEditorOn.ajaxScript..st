*qc-magritte-ajax
renderEditorOn: html ajaxScript: aScript
	self value isNil
		ifTrue: [ self renderSelectListOn: html ajaxScript: aScript ]
		ifFalse: [ self renderViewerOn: html; renderButtonsOn: html ]