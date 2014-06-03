accessing
format: aValue
	"4 to 8 digits, possibly separated. return nil when invalid, early out"
	|parts day month year value|
	value := (aValue trimBoth select: [:char | '1234567890.-/ ' includes: char]).
	value size < 3 ifTrue: [^aValue].
	value size > 10 ifTrue: [^aValue].
	parts := value findTokens: '.-/ '.
	parts size = 1
		ifTrue: [
			value := parts first.
			(value size ~= 4 and: [ value size ~= 6 and: [value size ~= 8 ] ]) ifTrue:[^aValue].
			day := (value copyFrom: 1 to: 2) asInteger.
			month := (value copyFrom: 3 to: 4) asInteger.
			value size = 4
				ifTrue: [
					year := Date today year.
					self futureDate 
						ifTrue: [ (Date year: year month: month day: day) < Date today 
							ifTrue: [ year := year + 1 ] ]
						ifFalse: [ (Date year: year month: month day: day) > Date today 
							ifTrue: [ year := year - 1 ] ] ]
				ifFalse: [
					year := (value copyFrom: 5 to: value size) asInteger.
					year < 100 ifTrue: [ year := year + 2000 ] ] ]
		ifFalse: [
			parts size > 3 ifTrue: [^aValue].
			day := parts first asInteger.
			month := parts second asInteger.
			parts size = 2
				ifTrue: [
					year := Date today year.
					self futureDate 
						ifTrue: [ (Date year: year month: month day: day) < Date today 
							ifTrue: [ year := year + 1 ] ]
						ifFalse: [ (Date year: year month: month day: day) > Date today 
							ifTrue: [ year := year - 1 ] ] ]
				ifFalse: [
					year := parts third asInteger ] ].
	day > 31 ifTrue: [^aValue].
	month > 12 ifTrue: [^aValue].
	year >= 2100 ifTrue: [^aValue].
	((year < 1900) and: [year>100]) ifTrue: [^aValue].
	^(day asString padded: #left to: 2 with: $0), QCMultilanguageString dateSeparator, (month asString padded: #left to: 2 with: $0), QCMultilanguageString dateSeparator, year asString
	
