actions
buildComposedComponent
	^self composed asComponent
		addMessage: 'Showing composed object in a form';
		addValidatedForm	