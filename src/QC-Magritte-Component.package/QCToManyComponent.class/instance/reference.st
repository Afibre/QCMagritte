private
reference
	| originalReference |
	reference ifNil: [ 
		| builder |
		originalReference := super reference.
		builder := originalReference descriptionBuilder.
		builder ifNotNil: [ reference := builder buildFrom: originalReference target: self value ] ].
	^originalReference