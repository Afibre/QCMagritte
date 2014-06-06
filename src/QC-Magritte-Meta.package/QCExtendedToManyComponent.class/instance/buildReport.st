private
buildReport
	| retVal |
	retVal := super buildReport.
	retVal columns do: [ :column |
		| desc |
		desc :=  (self userQueryResultsDescription shownColumns detect: [ :each | column magritteDescription = each ] ifNone: [ nil ]).
		column visible: desc notNil.
		desc ifNotNil: [ column magritteDescription priority: desc priority ] ].
	retVal columns sort: [ :a :b | a < b ].
	^retVal