accessing
valuesFor: aString
	^self uniqueValues
		select: [ :each | self conforms: each toFilter: aString ]
		thenCollect: [ :each | self stringFor: each ]