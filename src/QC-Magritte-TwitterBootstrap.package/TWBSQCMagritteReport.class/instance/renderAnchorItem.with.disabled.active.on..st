rendering-batch
renderAnchorItem: aCallback with: aBlock disabled: aBoolean active: anActiveBoolean on: html

	html listItem
		class: 'active' if: anActiveBoolean ;
		class: 'disabled' if: aBoolean ;
		with: [
			(aBoolean or: [ anActiveBoolean ])
				ifTrue: [
					html anchor
						with: aBlock ]
				ifFalse: [
					html anchor
						callback: aCallback; 
						with: aBlock ] ]