magritte-description
descriptionElementDescription: aDescription
	<magritteDescription: #descriptionElementDescription>
	^aDescription
		hideOn: [ :operator | operator needsValue not ] for: self descriptionOperation;
		yourself