accessing
magritteComponent
	magritteComponent ifNil: [ 
		self target ifNotNil: [
			magritteComponent := self target asComponent
				readonly: (self canEdit: self target) not;
				addValidatedFormWithButtons;
				onAnswer: [ :v | self handleAnswer: v ];
				yourself ] ].
	^magritteComponent