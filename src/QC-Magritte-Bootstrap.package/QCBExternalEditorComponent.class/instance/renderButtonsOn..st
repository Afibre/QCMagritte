rendering
renderButtonsOn: html
	html tbsButtonGroup: [ 
		html
			tbsButton
				beDefault;
				on: #remove of: self.
		html tbsButton
			beDefault;
			on: #edit of: self ]