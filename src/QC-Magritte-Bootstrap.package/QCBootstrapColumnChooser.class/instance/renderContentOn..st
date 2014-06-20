rendering
renderContentOn: canvas
	canvas div
		class: 'column-chooser-visible';
		with: [
			canvas tbsRow: [ 
				self renderSelectedColumnsOn: canvas.
				self renderUnselectedColumnsOn: canvas ].
			self renderOptionsOn: canvas ]