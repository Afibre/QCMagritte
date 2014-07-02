actions
select
	self hasChanged ifFalse: [
		self root 
			show: self createSelectComponent
			onAnswer: [ :result |
				result ifNotNil: [ self addAll: result ] ] ]