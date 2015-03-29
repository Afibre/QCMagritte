private
procesOptionsBlocksFor: aDescription value: anObject
	self magritteDescription do: [ :desc |
		(desc optionsBlocks at: aDescription ifAbsent: [ nil ]) ifNotNilDo: [ :valueBlock |
			desc options: (valueBlock cull: anObject cull: (self readUsing: desc) cull: self) ] ]