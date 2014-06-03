initialization
setForm: aForm
	form := aForm.
	self setDescription: MAContainer new.
	form addDescriptionsTo: description. 