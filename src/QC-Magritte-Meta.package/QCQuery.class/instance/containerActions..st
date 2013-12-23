magritte-description
containerActions: aContainer
	<magritteContainer>
	^aContainer
		addCustomCommand: (QCCommand on: (QCMultilanguageString on: 'Perform')
				condition: [ :row | row canPerform ]
				action: [ :row  :component | row performOn: component ]);
		addCustomCommand: ((QCCommand on: (QCMultilanguageString on: 'More options ...')
				condition: [ :row | row hasMoreOptions ]
				action: [ :row :component | row moreOptions: component ])
				inDetail;
				yourself);
		addCustomCommand: ((QCCommand on: (QCMultilanguageString on: 'Simplify ...')
				condition: [ :row | row canSimplify ]
				action: [ :row :component | row simplify: component ] )
				inDetail;
				yourself);
		yourself