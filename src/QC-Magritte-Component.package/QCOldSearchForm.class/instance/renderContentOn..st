rendering
renderContentOn: canvas
	canvas form
		class: 'search-form';
		with: [
			self renderSearchContentOn: canvas.
			canvas render: self columnChooser ]