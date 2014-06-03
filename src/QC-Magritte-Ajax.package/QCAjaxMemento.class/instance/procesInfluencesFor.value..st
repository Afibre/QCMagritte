private
procesInfluencesFor: aDescription value: anObject
	self magritteDescription children do: [ :desc |
		(desc influencedValues at: aDescription ifAbsent: [ nil ]) ifNotNilDo: [ :valueBlock |
			" we use super to avoid processing loops in influences "
			super write: (valueBlock cull: anObject cull: (self readUsing: desc) cull: self) using: desc ] ]