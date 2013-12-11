private
procesHiddenFor: aDescription value: anObject
	self magritteDescription children do: [ :desc |
		(desc hiddenValues at: aDescription ifAbsent: [ nil ]) ifNotNilDo: [ :valueBlock |
			desc hidden: (valueBlock cull: anObject cull: (self readUsing: desc) cull: self) ] ]