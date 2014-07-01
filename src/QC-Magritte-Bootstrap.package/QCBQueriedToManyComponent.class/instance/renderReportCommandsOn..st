rendering
renderReportCommandsOn: canvas
	canvas tbsButtonGroup: [ 
		self reportCommands do: [ :command |
			(command isValidCommandFor: self value) ifTrue: [ 
				canvas tbsButton
					beDefault;
					callback: [ command executeOn: self value component: self ];
					with: command label ] ] ]