*QC-Magritte-Other
childDescription
	| commonClass |
	self options ifEmpty: [ self halt ].
	commonClass := self options first class.
	self options allButFirstDo: [ :each |
		[ each class includesBehavior: commonClass ]
			whileFalse: [ commonClass := commonClass superclass ] ].
	^commonClass template magritteDescription