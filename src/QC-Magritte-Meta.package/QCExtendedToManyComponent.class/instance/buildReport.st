private
buildReport
	| retVal shown |
	retVal := super buildReport.
	shown := self resultsDescription shownColumns.
	retVal columns do: [ :column |
		| desc |
		desc :=  shown detect: [ :each | column magritteDescription = each ] ifNone: [ nil ].
		column visible: desc notNil.
		desc ifNotNil: [ column magritteDescription priority: desc priority ] ].
	retVal columns sort: [ :a :b | a < b ].
	^retVal