rendering
renderSearchContentOn: canvas
	canvas div
		class: 'search';
		with: [
			self selectQuery isSimple ifFalse: [ canvas text: self selectQuery queryDescription ].
			canvas space.
			self selectQuery hasSearchValue
				ifTrue: [ 
					canvas textInput on: #searchValue of: self.
					canvas submitButton
						callback: [ self search ];
						with: (QCMultilanguageString on: 'Search') ].
			canvas cancelButton 
				callback: [ self clear ];
				with: (QCMultilanguageString on: 'Clear') ]