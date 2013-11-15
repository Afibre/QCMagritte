magritte-description
descriptionParties
	<magritteDescription>
	^ MAToManyRelationDescription new
		priority: 50;
		label: 'Parties';
		accessor: #parties;
		classes: { QCParty };
		comment: 'All parties';
		yourself