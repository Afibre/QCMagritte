hooks
children
	self magritteComponent ifNotNil: [ ^Array with: self magritteComponent ].
	^super children