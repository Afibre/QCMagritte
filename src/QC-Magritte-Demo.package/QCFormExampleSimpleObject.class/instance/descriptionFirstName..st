magritte-description
descriptionFirstName: aDescription
	<magritteDescription: #descriptionFirstName>
	^aDescription
		addInfluence: [ :value | 
			self firstNameFor: value ] for: self descriptionFullName;
		yourself