instance creation
onDescription: aDescription
	^self on: nil query: (QCModel default queryFor: aDescription)