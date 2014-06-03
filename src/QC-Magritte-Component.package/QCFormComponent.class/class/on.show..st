instance creation
on: aForm show: aTarget 
	^(self memento: (QCFormMemento model: aTarget form: aForm))
		yourself