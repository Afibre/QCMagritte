accessing
saveProperties: aColumn settings: aReportSettings 
	aReportSettings isOrdered
		ifTrue: [ self properties at: #priority put: aColumn magritteDescription priority ].
		self properties
			at: aReportSettings saveProperty
			put: (aColumn propertyAt: aReportSettings property ifAbsent: [ nil ])
