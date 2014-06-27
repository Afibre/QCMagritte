magritte-description
descriptionTarget: aContainer
	<magritteContainer>
	self target ifNotNil: [ 
		self target magritteDescription do: [ :each |
			aContainer add: (each
				priority: each priority + 100;
				addToAccessor: #target;
				beReadonly;
				yourself) ] ].
	^aContainer