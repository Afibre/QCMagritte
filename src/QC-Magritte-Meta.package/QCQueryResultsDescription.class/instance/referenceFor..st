accessing-magritte
referenceFor: aResultType
	self parent ifNil: [ 
		^aResultType template magritteDescription ].
	^self parent referenceFor: aResultType
