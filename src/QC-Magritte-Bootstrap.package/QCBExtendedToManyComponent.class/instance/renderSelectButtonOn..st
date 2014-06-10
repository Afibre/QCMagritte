rendering
renderSelectButtonOn: canvas
	canvas tbsButton
		beDefault; 
		callback: [ self add ];
		text: (QCMultilanguageString on: 'Add')