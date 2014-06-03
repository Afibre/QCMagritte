rendering
renderSelectButtonOn: html
	html submitButton 
		callback: [ self add ];
		text: (QCMultilanguageString on: 'Add')