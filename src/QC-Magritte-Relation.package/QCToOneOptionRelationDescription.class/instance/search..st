actions
search: aComponent
	|newValue|
	newValue := aComponent root call: 
		(QCSingleSelectComponent on: self container: aComponent magritteDescription).
	newValue ifNotNil: [ 
		(aComponent childAt: self ) value: newValue].