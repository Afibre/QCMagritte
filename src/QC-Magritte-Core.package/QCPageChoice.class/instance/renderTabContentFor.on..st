rendering
renderTabContentFor: aPage on: canvas
	canvas anchor
		callback: [ self currentPage: aPage ];
		with: aPage label