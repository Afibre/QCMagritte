private
reference
	| originalReference |
	reference 
		ifNotNil: [ ^reference ]
		ifNil: [ 
			| builder |
			originalReference := super reference.
			builder := originalReference descriptionBuilder.
			self halt.
			builder ifNotNil: [ ^reference := builder buildFrom: originalReference target: self value model: self model model ] ].
	^originalReference