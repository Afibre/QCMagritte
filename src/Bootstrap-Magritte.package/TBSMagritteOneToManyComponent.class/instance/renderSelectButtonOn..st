as yet unclassified
renderSelectButtonOn: html
	html button 
		beSubmit;
		class: 'btn';
		callback: [self add];
		with: [html tbsGlyphIcon iconPlus; space; text: (self labelForSelector: #add)]
