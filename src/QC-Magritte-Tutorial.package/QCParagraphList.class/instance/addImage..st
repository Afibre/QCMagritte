accessing
addImage: aString
	self addParagraph: ((QCParagraph on: nil cssClass: nil)
		imageUrl: aString;
		yourself)