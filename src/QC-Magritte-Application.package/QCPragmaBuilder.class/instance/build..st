private
build: anObject
	| builderSelectors retVal |
	
	builderSelectors := self uniqueBuilderSelectors: anObject.
	retVal := OrderedCollection new.
	builderSelectors do: [ :each |
		anObject perform: each with: retVal ].
	^retVal