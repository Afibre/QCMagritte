as yet unclassified
renderEditorOn: html
	html hiddenInput 
		callback: [ :value | self clear ].
	self
		optionsWithIndexDo: [ :each :index |
			| optionId |
			optionId := self optionId: index.
			html label
				class: 'checkbox';
				for: optionId;
				with: [
					html checkbox
						class: 'checkbox';
						id: optionId;
						value: (self selectedList includes: each);
						onTrue: [ self add: each ] 
						onFalse: [ self remove: each ].
					html space.
					html text: (self labelForOption: each)]]
		separatedBy: []