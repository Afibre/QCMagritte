rendering
renderHeaderButtonsOn: canvas
	canvas div
		class: 'header-buttons';
		with: [ self columnChooser renderButtonOn: canvas ]