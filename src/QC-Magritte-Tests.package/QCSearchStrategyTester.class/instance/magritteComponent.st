accessing
magritteComponent
	^magritteComponent ifNil: [
		magritteComponent := (self description asContainer asComponentOn: self) ]
		