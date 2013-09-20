actions
triggerDoubleClickFor: aRow
	self doubleClickCommand
		ifNil: [ "no double click, ignore" ]
		ifNotNil: [ self doubleClickCommand executeOn: aRow component: self ]