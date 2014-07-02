rendering
renderSelectListOn: html
	" never ask for a class: always select "
	html submitButton 
		callback: [ self select ];
		text: 'Select' asMultilanguageString