private
buildCommandColumn
	| retVal |
	retVal := (QCCommandColumn on: self) setReport: self report.
	self addDefaultCommandsTo: retVal.
	self addDescriptionCommandsTo: retVal.
	self addOrderingCommandsTo: retVal.
	^ retVal