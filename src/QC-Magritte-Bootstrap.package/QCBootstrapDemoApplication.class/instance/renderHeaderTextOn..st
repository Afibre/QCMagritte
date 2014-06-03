rendering
renderHeaderTextOn: canvas
	canvas tbsNavbarHeader: [
		canvas tbsNavbarToggle
			target: '.navbar-collapse';
			toggle: 'collapse';
			with: 'Toggle navigation'.
		canvas tbsNavbarBrand with: self title ]