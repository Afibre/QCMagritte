accessing
amountValue: aValue
	(self value isNil or: [ self value isNumber or: [ self value isString ]])
		ifTrue: [ self value: (self numberFromValue: aValue) ]
		ifFalse: [ self value:
			((self value copy)
				setValue: (self numberFromValue: aValue);
				yourself) ]