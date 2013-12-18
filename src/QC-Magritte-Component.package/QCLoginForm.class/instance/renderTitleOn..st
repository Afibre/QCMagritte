rendering
renderTitleOn: canvas
	canvas div
		class: 'title';
		with: [
			canvas heading
				level: 2;
				with: self title ]