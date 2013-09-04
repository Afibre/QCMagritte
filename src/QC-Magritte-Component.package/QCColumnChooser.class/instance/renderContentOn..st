rendering
renderContentOn: canvas
	canvas div
		class: 'column-chooser-visible';
		with: [
			self renderSelectedColumnsOn: canvas.
			self renderUnselectedColumnsOn: canvas.
			self renderOptionsOn: canvas ]