magritte-description
childDescriptionFor: aClassList label: aLabel
	| classes |
	aClassList
		ifEmpty: [ classes := { QCModelPart } ]
		ifNotEmpty: [ classes := aClassList ].
	^self query childDescriptionFor: classes label: aLabel