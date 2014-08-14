rendering
renderNavigationButtonsOn: canvas
	canvas form
		class: 'navigation-buttons';
		with: [
			self hasPrevious ifTrue: [
					canvas submitButton 
					callback: [self first];
					class:  'goFirst-Button';
					with: (QCMultilanguageString on: 'first')].
			self hasPrevious ifTrue: [ 
				canvas submitButton 
					callback: [ self previous ];
					class: 'previous-button';
					with: (QCMultilanguageString on: 'previous')].
			canvas span: [ canvas space ].
			self hasNext ifTrue: [ 
				canvas submitButton 
					callback: [ self next ];
					class: 'next-button';
					with: (QCMultilanguageString on: 'next')].  
			self hasNext ifTrue: [
					canvas submitButton
					callback: [self last];
					class:  'navigation-goLast-Button';
					with: (QCMultilanguageString on: 'last')] ].
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
			
				