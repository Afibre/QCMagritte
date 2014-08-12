rendering
renderElementInternal: aDescription
	aDescription hidden
		ifFalse: [ 
			(self elementTagFor: aDescription)
				with: [ 
					aDescription hasComment
						ifTrue: [ 
							html span
								title: aDescription comment;
								with: [ 
									self renderLabel: aDescription.
									self renderControlsFor: aDescription ] ]
						ifFalse: [ 
							self renderLabel: aDescription.
							self renderControlsFor: aDescription ] ] ]