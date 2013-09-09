magritte-description
descriptionHiddenField: aDescription
	<magritteDescription: #descriptionHiddenField>
	^aDescription
		hideOn: [ :val | val not ]  for: self descriptionBool;
		hidden: self bool not;
		yourself