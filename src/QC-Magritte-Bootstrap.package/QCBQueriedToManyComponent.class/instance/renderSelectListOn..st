rendering
renderSelectListOn: canvas
	| addClasses |
	addClasses := self classes select: [ :each | self canAdd: each ].
	addClasses size > 1 ifTrue: [
		canvas tbsFormGroup: [
			canvas label for: 'selectClass'; class: 'sr-only'; with: 'Select class'.
			canvas select
				tbsFormControl;
				id: 'selectClass';
				list: addClasses;
				selected: self selected;
				callback: [ :value | self selected: value ];
				labels: [ :value | value label ] ].
			canvas space ].
	addClasses notEmpty
		ifTrue: [ self renderSelectButtonOn: canvas ]