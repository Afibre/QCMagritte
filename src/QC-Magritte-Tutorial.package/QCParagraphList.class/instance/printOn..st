printing
printOn: aStream
	self paragraphs do: [ :each |
		each printOn: aStream ] separatedBy: [ aStream crlf ]