accessing
visitElementDescription: aDescription
	aDescription influencedValues keysDo: [ :key | 
		(self influencedDescriptions at: aDescription ifAbsentPut: [ OrderedCollection new ])
			add: key ]