magritte descriptions
descriptionNumber
	<magritteDescription>
	^ MANumberDescription new
		priority: 30;
		label: 'Number';
		accessor: #number;
		comment: 'The index of the class';
		beRequired;
		yourself