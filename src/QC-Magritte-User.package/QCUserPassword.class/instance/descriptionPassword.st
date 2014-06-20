magritte-description
descriptionPassword
	<magritteDescription>
	^self parent descriptionPassword
		addToAccessor: #parent;
		readonly: false;
		visible: true;
		yourself