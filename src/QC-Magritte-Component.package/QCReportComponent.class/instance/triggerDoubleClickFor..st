actions
triggerDoubleClickFor: aRow
	self doubleClickCommand
		ifNil: [ self halt ]
		ifNotNil: [ self doubleClickCommand executeOn: aRow component: self ]