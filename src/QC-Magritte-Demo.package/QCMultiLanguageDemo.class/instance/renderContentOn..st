rendering
renderContentOn: canvas
	canvas heading: self label.
	canvas paragraph: (QCMultilanguageString on: 'This is the place where you can set and edit the multi language strings').
	canvas paragraph: (QCMultilanguageString on: 'Of course is this demo also multi language').
	canvas render: self configComponent
	