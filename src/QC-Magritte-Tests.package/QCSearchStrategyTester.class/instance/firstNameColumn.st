tests
firstNameColumn
	^self report columns detect: [ :each | each magritteDescription = (QCParty template descriptionFirstName) ]