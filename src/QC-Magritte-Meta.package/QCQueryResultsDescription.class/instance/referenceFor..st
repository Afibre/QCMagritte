accessing-magritte
referenceFor: aResultType
	self parent ifNil: [ 
		^aResultType magritteTemplate magritteDescription ].
	^self parent referenceFor: aResultType
