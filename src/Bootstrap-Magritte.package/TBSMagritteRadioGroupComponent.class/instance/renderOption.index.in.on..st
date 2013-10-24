rendering
renderOption: anObject index: anInteger in: aRadioGroup on: html
	| optionId |
	optionId := self optionId: anInteger.
	html label
		class: 'radio';
		with: [
			html radioButton
				id: optionId;
				group: aRadioGroup;
				selected: self value = anObject;
				callback: [ self value: anObject ].
			html space.
			html text: (self labelForOption: anObject) ].


