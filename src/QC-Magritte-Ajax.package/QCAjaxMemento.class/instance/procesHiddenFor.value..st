private
procesHiddenFor: aDescription value: anObject
	self magritteDescription do: [ :desc |
		(desc hiddenValues at: aDescription ifAbsent: [ nil ]) ifNotNil: [ :valueBlock |
			desc hidden: (valueBlock cull: anObject cull: (self readUsing: desc) cull: self) ] ]