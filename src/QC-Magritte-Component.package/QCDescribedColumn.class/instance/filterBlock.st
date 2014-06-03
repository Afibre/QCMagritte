private
filterBlock
	^ self 
		propertyAt: #filterValue
		ifPresent: [ :value | [ :row | self conforms: (self valueFor: row) toFilter: value ] ]