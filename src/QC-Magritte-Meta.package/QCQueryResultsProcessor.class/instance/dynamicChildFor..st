magritte-description
dynamicChildFor: aClass
	^(self childDescriptionFor: aClass concreteClasses label: aClass displayName)
		accessor:
			(MAPluggableAccessor
				read: [ :target | target resultsPerType at: aClass ifAbsent: [ #() ] ]
				write: [ :target :newValue |  ]);
		definitive: true;
		yourself
