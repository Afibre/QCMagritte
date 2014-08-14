visiting-description
visitElementDescription: aDescription
	(aDescription reportColumnClass = MADescribedColumn)
		ifTrue: [ aDescription reportColumnClass: QCBDescribedColumn ].
	(aDescription componentClass = MATextInputComponent)
		ifTrue: [ 
			aDescription componentClass: TBSMagritteTextInputComponent ].
	^super visitElementDescription: aDescription