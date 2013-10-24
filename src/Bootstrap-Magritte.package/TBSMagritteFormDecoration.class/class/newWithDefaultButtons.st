instance creation
newWithDefaultButtons
	^ self new 
		addButtons: #(save cancel);
		yourself