magritte-description
descriptionPasswordVerify
	<magritteDescription>
	^self parent descriptionPasswordVerify
		addToAccessor: #parent;
		readonly: false;
		visible: true;
		yourself