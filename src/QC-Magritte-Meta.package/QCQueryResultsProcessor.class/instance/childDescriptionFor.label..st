magritte-description
childDescriptionFor: aClassList label: aLabel
	| classes |
	aClassList
		ifEmpty: [ classes := { QCParentObject } ]
		ifNotEmpty: [ classes := aClassList ].
	^self query childDescriptionFor: classes label: aLabel