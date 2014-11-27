as yet unclassified
descriptionThree: aDescription
	<magrittedescription: #descriptionThree>
	^aDescription addInfluence:
		[:newTwo :oldThree :mem | self threeForMemento: mem] for: self descriptionTwo;
		yourself