accessing-magritte
canRemoveRole: aRole
	self users do: [ :each | (each hasRole: aRole) ifTrue: [ ^false ] ].
	^true