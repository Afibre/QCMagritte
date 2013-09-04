*QC-Magritte-Other
renderEditorOn: html ajaxScript: aScript
	(self magritteDescription isGrouped and: [ self magritteDescription groupBy canRead: self value ])
		ifTrue: [ self renderEditorForGroupedOn: html ]
		ifFalse: [ self renderEditorForUngroupedOn: html ajaxScript: aScript ]
