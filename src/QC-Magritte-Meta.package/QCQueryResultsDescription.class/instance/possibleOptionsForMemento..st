accessing-magritte
possibleOptionsForMemento: aMemento
	^self possibleColumnsFor: (aMemento readUsing: self descriptionResultType)