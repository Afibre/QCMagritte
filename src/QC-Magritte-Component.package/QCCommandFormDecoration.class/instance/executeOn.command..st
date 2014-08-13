actions
executeOn: aComponent command: aCommand
	" first perform a commit "
	aComponent validate ifFalse: [ ^self ].
	aComponent commit.
	(aCommand isValidCommandFor: self model component: aComponent) ifTrue: [
		aCommand executeOn: self model component: aComponent ].
	aComponent reset