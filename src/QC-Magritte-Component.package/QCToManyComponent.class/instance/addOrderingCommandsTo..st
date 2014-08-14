private
addOrderingCommandsTo: aCommandColumn
	self magritteDescription isOrdered ifTrue: [
		aCommandColumn
			addCommand: self upCommand;
			addCommand: self downCommand ].
	^ aCommandColumn