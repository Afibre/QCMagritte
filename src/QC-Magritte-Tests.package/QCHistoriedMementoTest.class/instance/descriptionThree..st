as yet unclassified
descriptionThree: aDescription
	<magritteDescription: #descriptionThree>
	^aDescription addInfluence:
		[:newTwo :oldThree :mem | self threeForMemento: mem] for: self descriptionTwo;
		yourself