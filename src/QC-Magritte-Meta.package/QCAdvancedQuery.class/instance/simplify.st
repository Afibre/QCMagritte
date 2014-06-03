testing
simplify
	self canSimplify ifFalse: [ ^self ].
	^QCStringQuery onQuery: self