as yet unclassified
renderEditorButtonAddOn: html
	html div
		class: 'btn-group';
		class: 'btn-group-vertical';
		with: [
			html button
				beSubmit;
				class: 'btn';
				callback: [ self add ];
				with: [html tbsGlyphIcon iconForward].
			html button
				class: 'btn';
				beSubmit;
				callback: [ self remove ];
				with: [html tbsGlyphIcon iconBackward]].