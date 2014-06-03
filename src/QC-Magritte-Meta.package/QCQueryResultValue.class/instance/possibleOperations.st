accessing-magritte
possibleOperations
	^QCOperator withAllSubclasses collect: [ :each | each instance ] thenSelect: [ :each | each canCalculate ]