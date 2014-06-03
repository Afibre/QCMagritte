testing
isReadonly
	^self readonly or: [ 
		self form isReadonly
			or: [ self isRoot not
			and: [ self parent isReadonly ] ] ]