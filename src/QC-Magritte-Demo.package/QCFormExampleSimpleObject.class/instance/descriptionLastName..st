magritte-description
descriptionLastName: aDescription
	<magritteDescription: #descriptionLastName>
	^aDescription
		addInfluence: [ :value | 
			self lastNameFor: value ] for: self descriptionFullName;
		yourself