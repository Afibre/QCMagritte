accessing
isValidValue: aValue
	"4 to 8 digits, possibly separated. return false if not valid, early out"
	|parts day month year value|
	(aValue isKindOf: Date) ifTrue: [ ^true ].
	(aValue isKindOf: Timespan) ifTrue: [ ^true ].
	aValue ifEmpty: [ ^false ].			
	value := (aValue trimBoth select: [:char | '1234567890.-/ ' includes: char]).
	value size < 3 ifTrue: [^false].
	value size > 10 ifTrue: [^false].
	parts := value findTokens: '.-/ '.
	parts size = 1 
		ifTrue: [
			value := parts first.
			(value size ~= 4 and: [ value size ~= 6 and: [value size ~= 8 ] ]) ifTrue:[^false].
			day := (value copyFrom: 1 to: 2) asInteger.
			month := (value copyFrom: 3 to: 4) asInteger.
			value size = 4
				ifTrue: [ year := 0 ]
				ifFalse: [ year := (value copyFrom: 5 to: value size) asInteger ] ]
		ifFalse: [
			parts size > 3 ifTrue: [^false].
			day := parts first asInteger.
			month := parts second asInteger.
			parts size = 2
				ifTrue: [ year := 0 ]
				ifFalse: [ year := parts third asInteger ] ].
	day > 31 ifTrue: [^false].
	month > 12 ifTrue: [^false].
	year >= 2100 ifTrue: [^false].
	((year < 1900) and: [year>100]) ifTrue: [^false].
	^value notEmpty