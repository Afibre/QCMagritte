magritte-description
descriptionShownColumns: aDescription
	<magritteDescription: #descriptionShownColumns>
	^aDescription
		hideOn: [ :newResult | self canChooseColumnsFor: newResult ] for: self descriptionResultType;
		addInfluence: [ :newResult | self defaultColumnsFor: newResult ] for: self descriptionResultType;
		addOptionsBlock: [ :newResult | self possibleColumnsFor: newResult ] for: self descriptionResultType;
		yourself