accessing
imageBlock
	^imageBlock ifNil: [
		self imageUrl ifNotNil: [
			[ :canvas :height :altText |
				canvas image
					url: self imageUrl;
					height: height;
					altText: altText ] ] ]