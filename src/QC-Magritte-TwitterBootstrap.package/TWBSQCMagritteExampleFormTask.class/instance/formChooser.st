private
formChooser
	^ (TWBSQCMagritteExampleFormChooser new asComponent)
		addDecoration: (TWBSMagritteFormDecoration buttons: (Array with: #save -> 'Create a new form'));
		yourself