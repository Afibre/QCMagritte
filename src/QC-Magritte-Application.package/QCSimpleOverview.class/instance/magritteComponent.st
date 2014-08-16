accessing
magritteComponent
	^magritteComponent ifNil: [ magritteComponent := self buildMagritteComponent ]