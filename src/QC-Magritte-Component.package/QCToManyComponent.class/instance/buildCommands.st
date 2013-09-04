private
buildCommands
	| retVal |
	retVal := (QCCommandColumn on: self) setReport: self report.
	self addDefaultCommandsTo: retVal.
	self magritteDescription isOrdered ifTrue: [
		retVal
			addCommandOn: self selector: #up: text: 'up';
			addCommandOn: self selector: #down: text: 'down' ].
	^ retVal