magritte-description
descriptionOperator
	<magritteDescription>
	^MASingleOptionDescription new
		accessor: #operator;
		label: 'Operator';
		options: self possibleOperators;
		priority: 200;
		beRequired;
		labels: QCLabelReflectiveWriter;
		visibleInReport: false;
		yourself