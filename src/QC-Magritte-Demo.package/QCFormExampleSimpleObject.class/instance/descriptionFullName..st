magritte-description
descriptionFullName: aDescription
	<magritteDescription: #descriptionFullName>
	^aDescription
		addInfluence: [ :value :prev :memento | 
			self fullNameFor: memento ] for: self descriptionFirstName;
		addInfluence: [ :value :prev :memento | 
			self fullNameFor: memento ] for: self descriptionLastName;
		yourself