rendering
renderContentOn: canvas
	canvas tbsForm
		beHorizontal;
		multipart: self requiresMultipartForm;
		defaultAction: [ self execute: self default ];
		with: [
			self renderNextOn: canvas.
			self renderButtonsOn: canvas ]