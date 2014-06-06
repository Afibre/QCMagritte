private
buildQueryResultsDescription
	" find the user settings "
	self model isDirectResultsQuery
		ifTrue: [ ^self model resultsDescription ].
	^(self rootModel queryFor: self magritteDescription) resultsDescription