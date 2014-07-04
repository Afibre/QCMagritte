rendering
renderSelectListOn: html
	" never ask for a class: always select "
	html tbsButton
		beDefault; 
		callback: [ self select ];
		text: 'Select' asMultilanguageString