accessing
displayName
	self target ifNil: [ ^QCMultilanguageString on: 'No target' ].
	self target isModel ifTrue: [ ^self targetDescription label ].
	self target displayNameFor: self targetDescription label