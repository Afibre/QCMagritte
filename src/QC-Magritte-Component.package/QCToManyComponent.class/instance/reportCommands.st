accessing
reportCommands
	^reportCommands ifNil: [ reportCommands := self buildReportCommands ]