*qc-magritte-ajax
renderEditorOn: html ajaxScripts: aScriptList
	self value isNil
		ifTrue: [ self renderSelectListOn: html ajaxScripts: aScriptList ]
		ifFalse: [ self renderViewerOn: html; renderButtonsOn: html ]