accessing
setSelected: anArray
	| newValue |
	newValue := OrderedCollection new.
	anArray do: [ :each | newValue add: each ].
	self value: newValue