instance creation
model: aModel form: aForm
	^ self new
		setModel: aModel;
		setForm: aForm;
		reset; yourself