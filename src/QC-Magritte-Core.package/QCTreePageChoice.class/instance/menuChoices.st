accessing
menuChoices
	^(1 to: self menuSize) collect: [ :each | self menuChoice: each ]