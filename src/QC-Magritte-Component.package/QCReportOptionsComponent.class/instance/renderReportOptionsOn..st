rendering
renderReportOptionsOn: canvas
	canvas div
		class: 'control-group';
		with: [
			canvas label
				class: 'control-label';
				with: (QCMultilanguageString on: '#rows:').
			canvas div
				class: 'control-value';
				with: [
					canvas select
						list: self possibleRowCounts;
						selected: self rowCount;
						callback: [ :value | self rowCount: value ] ] ].
	canvas submitButton
		callback: [];
		with: (QCMultilanguageString on: 'Update').
	self canSave ifTrue: [  	
		canvas submitButton
			callback: [ self save ];
			with: self saveCommand label]

	
