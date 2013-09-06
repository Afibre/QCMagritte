private
reference
	reference ifNil: [ 
		| builder originalReference |
		originalReference := super reference.
		builder := originalReference descriptionBuilder.
		builder ifNotNil: [ reference := builder buildFrom: originalReference target: self value ] ].
	^reference