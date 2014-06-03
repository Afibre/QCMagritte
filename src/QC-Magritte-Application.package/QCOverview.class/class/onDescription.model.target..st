instance creation
onDescription: aDescription model: aModel target: aTarget
	| query |
	" We need to make sure all accessors are unique here ... we probably should do something for this here "
	query := (aModel queryFor: aDescription in: aTarget ifAbsentPut: [ QCQuery on: aTarget description: aDescription ]).
	query target: aTarget.
	^self on: nil query: query