*qc-magritte-component
hasForm
	self parent ifNil: [ ^super hasForm ].
	^self parent hasForm