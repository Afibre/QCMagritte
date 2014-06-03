rendering
renderReportCommandsOn: canvas
	canvas span
		class: 'button-space';
		with: [  canvas space ].
	self reportCommands do: [ :command |
		(command isValidCommandFor: self value) ifTrue: [ 
			canvas submitButton
				callback: [ command executeOn: self value component: self ];
				with: command label ] ]