rendering
renderSelectListOn: canvas
	| addClasses |
	addClasses := self classes select: [ :each | self canAdd: each ].
	addClasses size > 1 ifTrue: [
		canvas select
			tbsFormControl;
			list: addClasses;
			selected: self selected;
			callback: [ :value | self selected: value ];
			labels: [ :value | value label ] ].
	addClasses notEmpty
		ifTrue: [ self renderSelectButtonOn: canvas ]