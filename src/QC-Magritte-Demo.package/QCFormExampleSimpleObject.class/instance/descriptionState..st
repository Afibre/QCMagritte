magritte-description
descriptionState: aDescription
	" this method hides the state, when no country is selected "
	<magritteDescription: #descriptionState>
	^aDescription
		hideOn: [ :val | val isNil ]  for: self descriptionCountry;
		hidden: self country isNil;
		yourself