rendering
renderSingleLink: aCommand on: html for: anObject text: aLabel
	((aCommand respondsTo: #imageUrl) and: [ aCommand imageUrl notNil ])
		ifTrue: [
			html anchor
				class: 'command-link';
				callback: [ self execute: aCommand with: anObject ];
				 with: [ html image
					url: aCommand imageUrl;
					height: 16;
					altText: aLabel ] ]
		ifFalse: [ 
			html span
				class: 'command';
				with: [
					html anchor
						callback: [ self execute: aCommand with: anObject ];
						with: aLabel ] ]

