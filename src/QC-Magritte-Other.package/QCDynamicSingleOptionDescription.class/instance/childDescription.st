accessing
childDescription
	self options ifNotEmpty: [ ^self options first magritteDescription ].
	^(self optionsBlock value: nil) first magritteDescription