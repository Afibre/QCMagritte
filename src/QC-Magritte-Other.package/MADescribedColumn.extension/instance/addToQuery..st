*QC-Magritte-Other
addToQuery: aQuery 
	self 
		propertyAt: #filterValue
		ifPresent: [ :value | aQuery addFilterToQuery: value for: self magritteDescription ].
	self magritteDescription
		propertyAt: #origin
		ifPresent: [ :value | aQuery addQueryColumn: value ].
	self isVisible ifTrue: [ aQuery addShownColumn: self magritteDescription ]