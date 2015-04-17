as yet unclassified
isDifferent: firstDictionary to: secondDictionary
"nil is equal to nil"
	| firstValue secondValue |
	self magritteDescription do: [ :each |
		(each isVisible and: [ each isReadonly not ]) ifTrue: [
			firstValue := firstDictionary at: each ifAbsent: [ nil ].
			secondValue := secondDictionary at: each ifAbsent: [ nil ].
			((firstValue isNil) and: [ secondValue isNil ]) ifTrue: [ ^false ].
			firstValue = secondValue ifFalse: [ ^ true ] ] ].
	^ false