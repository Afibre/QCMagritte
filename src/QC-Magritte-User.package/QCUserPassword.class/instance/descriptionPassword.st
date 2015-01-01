magritte-description
descriptionPassword
	<magritteDescription>
	|p|
	p := self parent.
	p ifNil: [^nil].
	^p descriptionPassword
		addToAccessor: #parent;
		readonly: false;
		visible: true;
		yourself