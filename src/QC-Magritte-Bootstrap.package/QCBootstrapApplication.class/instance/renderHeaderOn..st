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
					self renderHeaderTextOn: canvas.
					self renderPageChoiceMenuOn: canvas ] ]