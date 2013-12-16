*qc-magritte-ajax
renderSelectListOn: html ajaxScripts: aScriptList
	self classes size > 1 ifTrue: [
		| tag |
		tag := html select
			id: self labelId;
			list: self classes;
			selected: self selected.
		aScriptList do: [ :each | tag onChange: each ].
		tag
			callback: [ :value | self selected: value ];
			labels: [ :value | value label ] ].
	self classes notEmpty
		ifTrue: [ self renderSelectButtonOn: html ]