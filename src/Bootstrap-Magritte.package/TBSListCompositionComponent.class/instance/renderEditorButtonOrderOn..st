as yet unclassified
renderEditorButtonOrderOn: html
	html div
		class: 'btn-group';
		class: 'btn-group-vertical';
		with: [
			html button
				beSubmit;
				class: 'btn';
				callback: [ self moveUp ];
				with: [html tbsGlyphIcon iconChevronUp].
			html button
				beSubmit
				class: 'btn';
				callback: [ self moveDown ];
				with: [html tbsGlyphIcon iconChevronDown]].