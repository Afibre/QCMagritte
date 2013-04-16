rendering
renderContentOn: canvas
	canvas heading: 'Keep Alive'.
	canvas paragraph: 'This demo application uses a keep alive.
		In the main method it call: '.
	self renderSmalltalkOn: canvas sourceSelector: #renderKeepAliveOn: