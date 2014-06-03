*QC-Magritte-Other
hasFilterValue
	self columns do: [ :each | each propertyAt: #filterValue ifPresent: [ ^true ] ].
	^false