magritte-description
descriptionHistory: aDescription
	<magritteDescription: #descriptionHistory>
	^aDescription
		addInfluence: [ :value :prev | 
			prev
				ifNil: [ value asString ]
				ifNotNil: [ value asString, String crlf, prev ] ] for: self descriptionInt;
		yourself