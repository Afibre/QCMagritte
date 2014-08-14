rendering
renderSearchElementsOn: canvas	
	canvas form
		class: 'navigation-search';
		with: [
			self hasElement ifTrue: [ 
				canvas textInput
					class:'navigation-search';
					id: canvas nextId;
					value: self navigationSearchValue;
					script: (canvas jQuery this autocomplete
						sourceCallback: [ :term | self navigationOptionsFor: term ]);
					callback: [ :value | self navigationSearchValue: value ].	
				canvas submitButton
					callback: [ self navigate ];
					with: (QCMultilanguageString on: 'Show') ] ].