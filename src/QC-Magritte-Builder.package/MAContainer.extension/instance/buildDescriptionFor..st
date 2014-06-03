*qc-magritte-builder
buildDescriptionFor: anObject 
	self descriptionBuilder ifNotNilDo: [ :builder |
		^builder buildFrom: self target: anObject ].
	^self