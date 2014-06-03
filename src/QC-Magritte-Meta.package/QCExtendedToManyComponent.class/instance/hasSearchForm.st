testing
hasSearchForm
	self parent ifNil: [ ^ true ].
	^ self parent shouldChildDisplaySearchForm