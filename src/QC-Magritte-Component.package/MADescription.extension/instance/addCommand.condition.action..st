*qc-magritte-component
addCommand: aString condition: aCondition action: anAction
	" commands that are shown at the detail view (command decorator) "
	^self addCommand: (QCCommand on: aString condition: aCondition action: anAction)