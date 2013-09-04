accessing
valueFor: aRow
	self operation ifNil: [ ^QCMultilanguageString on: 'No operation selected' ].
	self targetDescription ifNotNil: [ 
		| collection |
		collection := (aRow readUsing: self targetDescription).
		self operation needsValue ifTrue: [ 
			self elementDescription
				ifNil: [ ^QCMultilanguageString on: 'No element selected' ]
				ifNotNil: [ collection := collection collect: [ :each | each readUsing: self elementDescription ] ] ].
		^self operation valueFor: collection ].
	^QCMultilanguageString on: 'No target selected'