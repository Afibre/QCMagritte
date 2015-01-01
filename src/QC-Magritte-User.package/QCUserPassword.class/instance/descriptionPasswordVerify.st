magritte-description
descriptionPasswordVerify
	<magritteDescription>
	|p|
	p := self parent.
	p ifNil: [ ^nil ].
	^p descriptionPasswordVerify
		addToAccessor: #parent;
		readonly: false;
		visible: true;
		yourself