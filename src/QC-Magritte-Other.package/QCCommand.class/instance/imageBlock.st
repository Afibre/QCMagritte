accessing
imageBlock
	^imageBlock ifNil: [ [ :canvas :height |
		canvas image
			url: self imageUrl;
			height: height;
			altText: self label ] ]