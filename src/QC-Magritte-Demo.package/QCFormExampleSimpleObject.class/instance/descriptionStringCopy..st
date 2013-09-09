magritte-description
descriptionStringCopy: aDescription
	<magritteDescription: #descriptionStringCopy>
	^aDescription
		addInfluence: [ :value | value ] for: self descriptionString;
		yourself