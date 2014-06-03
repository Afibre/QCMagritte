accessing
labelForUnit: aUnit
	self propertyAt: #unitLabels ifPresent: [ :labels |
		labels optionFor: aUnit ifPresent: [ :value | ^value ] ].
	^aUnit name