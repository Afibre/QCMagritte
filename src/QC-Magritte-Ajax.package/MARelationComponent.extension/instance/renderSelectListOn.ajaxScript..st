*qc-magritte-ajax
renderSelectListOn: html ajaxScript: aScript
	self classes size > 1 ifTrue: [
		html select
			id: self labelId;
			list: self classes;
			selected: self selected;
			onChange: aScript;
			callback: [ :value | self selected: value ];
			labels: [ :value | value label ] ].
	self classes notEmpty
		ifTrue: [ self renderSelectButtonOn: html ]