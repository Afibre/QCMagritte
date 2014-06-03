accessing
unit: aUnit
	aUnit
		ifNil: [ self value: self amountValue ]
		ifNotNil: [ self value: (self kind unit: aUnit value: self amountValue) ]