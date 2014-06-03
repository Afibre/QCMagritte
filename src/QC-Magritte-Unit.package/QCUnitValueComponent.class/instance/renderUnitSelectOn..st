rendering
renderUnitSelectOn: html
	self updateUnitOptions.
	(self magritteDescription isUnitGrouped and: [ self magritteDescription groupUnitBy canRead: self value ])
		ifTrue: [ self renderUnitSelectForGroupedOn: html ]
		ifFalse: [ self renderUnitSelectForUngroupedOn: html ]