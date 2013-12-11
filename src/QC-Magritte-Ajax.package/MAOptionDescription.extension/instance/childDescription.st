*qc-magritte-ajax
childDescription
	| commonClass |
	self options ifEmpty: [ ^QCObject template magritteDescription ].
	commonClass := self options first class.
	self options allButFirstDo: [ :each |
		[ each class includesBehavior: commonClass ]
			whileFalse: [ commonClass := commonClass superclass ] ].
	^commonClass template magritteDescription