rendering
renderMessagesOn: canvas
	self messages do: [ :each |
		canvas paragraph: each ]