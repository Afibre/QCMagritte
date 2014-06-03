rendering
renderMenuLinkFor: aPage on: canvas
	canvas anchor
		callback: [ self selectPage: aPage ];
		with: aPage label