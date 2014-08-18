rendering
renderButtonsOn: html
	html space.
	html tbsButtonGroup: [ 
		html
			tbsButton
				beDefault;
				on: #remove of: self.
		html tbsButton
			beDefault;
			on: #edit of: self ]