rendering
renderContentOn: html
	html form
		class: 'magritte';
		class: self formCss;
		multipart: self requiresMultipartForm;
		defaultAction: [ self execute: self default ];
		with: [
			html fieldSet: [
				self renderLegendOn: html.
				self renderNextOn: html.
				self renderButtonsOn: html ] ]