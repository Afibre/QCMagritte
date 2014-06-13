accessing
magritteComponent
	magritteComponent ifNil: [ magritteComponent := self createMagritteComponent ].
	^magritteComponent