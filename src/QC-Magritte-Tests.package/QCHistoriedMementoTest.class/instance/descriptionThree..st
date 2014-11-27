as yet unclassified
descriptionThree: aDescription
	"influenced by two"
	<magritteDescription: #descriptionThree>
	^aDescription addInfluence:
		[:newTwo :oldThree :mem | self threeForMemento: mem] for: self descriptionTwo;
		yourself