accessing
addShownColumn: aColumn
	self shownColumns ifEmpty: [  shownColumns := OrderedCollection new ].
	^self shownColumns add: aColumn