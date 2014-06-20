instance creation
onOptions: aUserOptions
	^(self on: aUserOptions parent)
		copyFrom: aUserOptions;
		yourself