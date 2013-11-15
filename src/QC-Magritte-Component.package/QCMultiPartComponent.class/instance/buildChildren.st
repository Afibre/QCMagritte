private
buildChildren
	^ self magritteDescription
		inject: Dictionary new
		into: [ :result :each |
			each isVisible ifTrue: [
				result at: each put: (each createSubComponentIn: self) ].
			result ]