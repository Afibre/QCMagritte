rendering
renderContentOn: html
	self renderLegendOn: html.
	html form
		class: 'magritte';
		class: self formCss;
		multipart: self requiresMultipartForm;
		defaultAction: [ self execute: self default ];
		with: [
			self renderNextOn: html.
			self renderButtonsOn: html ]