as yet unclassified
canSave
	self ifLoggedIn: [ ^self user canSaveReportOptions ].
	^false