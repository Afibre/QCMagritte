rendering
renderReportCommandsOn: canvas
	canvas span
		class: 'button-space';
		with: [  canvas space ].
	self reportCommands do: [ :command |
		(command isValidCommandFor: nil) ifTrue: [ 
			canvas submitButton
				callback: [ command execute ];
				with: command label ] ]