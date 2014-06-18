rendering
renderSingleLink: aCommand on: html for: anObject text: aLabel
	((aCommand respondsTo: #hasImage) and: [ aCommand hasImage ])
		ifTrue: [
			html anchor
				class: 'command-link';
				callback: [ self execute: aCommand with: anObject ];
				 with: [ aCommand renderImageOn: html height: 16 altText: aLabel ] ]
		ifFalse: [ 
			html span
				class: 'command';
				with: [
					html anchor
						callback: [ self execute: aCommand with: anObject ];
						with: aLabel ] ]
