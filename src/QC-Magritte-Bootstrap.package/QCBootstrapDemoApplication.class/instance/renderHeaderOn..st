rendering
renderHeaderOn: canvas
	canvas div
		class: 'navbar';
		class: 'navbar-default';
		role: 'navigation';
		with: [
			canvas div
				class: 'container-fluid';
				with: [
					super renderHeaderOn: canvas.
					self renderPageChoiceMenuOn: canvas ] ]