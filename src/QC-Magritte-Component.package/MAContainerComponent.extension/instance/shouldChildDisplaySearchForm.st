*qc-magritte-component
shouldChildDisplaySearchForm
	self parent ifNil: [ ^true ].
	^self parent shouldChildDisplaySearchForm