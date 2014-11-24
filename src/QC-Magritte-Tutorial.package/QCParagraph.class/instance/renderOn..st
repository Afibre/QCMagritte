rendering
renderOn: canvas
	| tag |
	imageUrl ifNil: [
		tag := canvas paragraph.
		self cssClass ifNotNil: [ tag class: self cssClass ].
		tag with: [
			self text linesDo: [ :line |
				canvas text: line;
					break ] ]]
	ifNotNil: [ 
		tag := canvas paragraph.
		self cssClass ifNotNil: [ tag class: self cssClass ].
		tag with: [  
			canvas image
				url: QCTutorialLibrary / imageUrl ]]