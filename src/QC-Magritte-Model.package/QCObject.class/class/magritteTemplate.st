accessing
magritteTemplate
	^magritteTemplate ifNil: [ magritteTemplate := self defaultMagritteTemplate ]