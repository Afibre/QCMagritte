actions
saveAsQuery
	| newQuery |
	newQuery := QCQuery onQuery: self selectQuery.
	newQuery queryName: self queryName.
	newQuery resultType: self baseType.
	parent report columns do: [ :each |
		each addToQuery: newQuery ].
	newQuery addToModel.
	self clear