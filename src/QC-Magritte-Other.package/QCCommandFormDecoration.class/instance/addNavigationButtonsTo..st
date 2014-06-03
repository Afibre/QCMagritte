actions
addNavigationButtonsTo: aCollection 
	self hasPrevious ifTrue: [ aCollection add: #previous ].
	self hasNext ifTrue: [ aCollection add: #next ].