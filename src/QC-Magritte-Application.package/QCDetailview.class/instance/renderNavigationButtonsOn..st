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
					class: 'previous-Button';
					with: (QCMultilanguageString on: 'previous')].
			canvas span: [ canvas space ].
			self hasNext ifTrue: [ 
				canvas submitButton 
					callback: [ self next ];
					class: 'next-Button';
					with: (QCMultilanguageString on: 'next')].  
			self hasNext ifTrue: [
					canvas submitButton
					callback: [self last];
					class:  'goLast-Button';
					with: (QCMultilanguageString on: 'last')] ].
	
			
				