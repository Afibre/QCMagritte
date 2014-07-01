rendering
renderSelectListOn: canvas
	self classes size > 1 ifTrue: [
		canvas tbsFormGroup: [
			canvas label for: 'selectClass'; class: 'sr-only'; with: 'Select class'.
			canvas select
				tbsFormControl;
				id: 'selectClass';
				list: self classes;
				selected: self selected;
				callback: [ :value | self selected: value ];
				labels: [ :value | value label ] ].
			canvas space ].
	self classes notEmpty
		ifTrue: [ self renderSelectButtonOn: canvas ]