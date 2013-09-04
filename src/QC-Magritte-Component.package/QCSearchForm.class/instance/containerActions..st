magritte-description
containerActions: aContainer
	<magritteContainer>
	^aContainer
		addCustomCommand: ((QCCommand on: (QCMultilanguageString on: 'More options ...')
				condition: nil
				action: [ :row :component | row moreOptions: component ])
				inDetail;
				yourself);
		addCustomCommand: ((QCCommand on: (QCMultilanguageString on: 'Simplify ...')
				condition: [ :row | row canSimplify ]
				action: [ :row :component | row simplify: component ] )
				inDetail;
				yourself);
		yourself