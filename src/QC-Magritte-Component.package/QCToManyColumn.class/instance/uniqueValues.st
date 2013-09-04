private
uniqueValues
	" Returns the values that are used for filtering.
	We want to filter on addresses, and not on collections of addresses "
	^ self propertyAt: #uniqueValues ifAbsentPut: [
		| uniqueValues |
		uniqueValues := Dictionary new.
		self report rows
			do: [ :row | (self valueFor: row) do: [ :each | uniqueValues at: each put: each ] ].
		uniqueValues values asArray ]