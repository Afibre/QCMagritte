*qc-magritte-ajax
renderEditorOn: canvas ajaxScripts: aScriptList 
	(self magritteDescription isGrouped and: [ self magritteDescription groupBy canRead: self value ])
		ifTrue: [ self renderEditorForGroupedOn: canvas ]
		ifFalse: [ self renderEditorForUngroupedOn: canvas ajaxScripts: aScriptList ]
