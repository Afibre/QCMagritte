accessing
addClasses: aCollection
	aCollection do: [ :each | self addQueryClass: each queryClass ]