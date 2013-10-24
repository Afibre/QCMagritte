private
formChooser
	^ (TBSMagritteExampleFormChooser new asComponent)
		addDecoration: (TBSMagritteFormDecoration buttons: (Array with: #save -> 'Create a new form'));
		yourself