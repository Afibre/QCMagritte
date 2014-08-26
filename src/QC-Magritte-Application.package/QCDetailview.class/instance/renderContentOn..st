rendering
renderContentOn: canvas
	canvas div
		class: 'navigation';
		with: [ 
			self renderNavigationButtonsOn: canvas.
			self renderSearchElementsOn: canvas ].
	super renderContentOn: canvas