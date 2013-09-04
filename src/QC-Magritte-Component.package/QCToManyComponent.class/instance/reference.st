private
reference
	reference ifNil: [ 
		| builder originalReference |
		reference := super reference.
		builder := reference descriptionBuilder.
		builder ifNotNil: [ reference := builder buildFrom: reference target: self value ] ].
	^reference