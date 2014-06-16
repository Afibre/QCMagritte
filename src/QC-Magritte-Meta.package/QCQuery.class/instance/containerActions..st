magritte-description
containerActions: aContainer
	<magritteContainer>
	^aContainer
		addCommand: (QCCommand on: (QCMultilanguageString on: 'Perform')
				condition: [ :row | row canPerform ]
				action: [ :row  :component | row performOn: component ]);
		addCommand: ((QCCommand on: (QCMultilanguageString on: 'More options ...')
				condition: [ :row | row hasMoreOptions ]
				action: [ :row :component | row moreOptions: component ])
				inDetail;
				yourself);
		addCommand: ((QCCommand on: (QCMultilanguageString on: 'Simplify ...')
				condition: [ :row | row canSimplify ]
				action: [ :row :component | row simplify: component ] )
				inDetail;
				yourself);
		yourself