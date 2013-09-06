actions
updateSessionState
	self user ifNotNil: [
		self query resultsDescription: (self user queryResultsDescriptionFor: originalQuery) ].
	self rebuild.
	selectQuery := nil