actions
add
	self hasChanged ifFalse: [
		self root 
			show: (self validatedFormOn: self newInstance)
			onAnswer: [ :result |
				result ifNotNil: [ self add: result ] ] ]
