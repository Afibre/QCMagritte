magritte-description
containerActions: aContainer
	<magritteContainer>
	^aContainer
		addCommand: 'Change password'
				condition: #canChangePassword
				action: [ :row :component | row changePasswordOn: component ];
		yourself