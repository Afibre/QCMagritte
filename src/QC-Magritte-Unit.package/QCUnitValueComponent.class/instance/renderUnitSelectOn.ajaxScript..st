rendering
renderUnitSelectOn: html ajaxScript: aScript
	self updateUnitOptions.
	(self magritteDescription isUnitGrouped and: [ self magritteDescription groupUnitBy canRead: self value ])
		ifTrue: [ self renderUnitSelectForGroupedOn: html ]
		ifFalse: [ self renderUnitSelectForUngroupedOn: html ajaxScript: aScript ]