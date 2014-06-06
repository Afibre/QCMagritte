private
buildQueryResultsDescription
	" find the user settings "
	self model isDirectResultsQuery ifFalse: [ 
		| rootQuery |
		rootQuery := (self rootModel queryFor: self magritteDescription).
		self user ifNotNil: [ ^self user queryResultsDescriptionFor: rootQuery ].
		^rootQuery resultsDescription ].
	self user ifNotNil: [ ^self user queryResultsDescriptionFor: self model ].
	^self model resultsDescription
	