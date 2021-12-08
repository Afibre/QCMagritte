*QC-Magritte-Other
addToAccessor: anAccessor
	" chains an accessor to an existing accessor. Needed because of extra dictionaries "
	self accessor: (MAChainAccessor on: self accessor accessor: anAccessor).
	self addToAccessor: anAccessor to: (self propertyAt: #influencedValues ifAbsent: [ nil ]).
	self addToAccessor: anAccessor to: (self propertyAt: #optionsBlocks ifAbsent: [ nil ]).
	self addToAccessor: anAccessor to: (self propertyAt: #hiddenValues ifAbsent: [ nil ]).