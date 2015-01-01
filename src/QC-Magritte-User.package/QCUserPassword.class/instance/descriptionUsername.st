magritte-description
descriptionUsername
	<magritteDescription>
	|p|
	p := self parent.
	p ifNil: [ ^nil ].
	^p descriptionUsername
		addToAccessor: #parent;
		yourself