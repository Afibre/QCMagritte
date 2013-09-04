actions
add
	self hasChanged ifFalse: [
		self root 
			show: (self validatedFormOn: (self selected new))
			onAnswer: [ :result |
				result ifNotNil: [ self add: result ] ] ]
