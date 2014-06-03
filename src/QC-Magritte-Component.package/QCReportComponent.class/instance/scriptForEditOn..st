scripts
scriptForEditOn: html
	| row rowId|
	^html jQuery this
		on: 'dblclick'
		selector: ''
		do: ((html jQuery ajax
			callback: [ :value |
				rowId := value.
				row := html callbacks passengerAt: rowId.
				self triggerDoubleClickFor: row ]
			value: (((html jQuery expression: (JSStream on: 'event.target')) closest: 'tr') attributeAt: 'id');
			script: [ :s |  s << (s jQuery id: rowId) replaceWith:[:r |  self reRenderRow: row on: r ]]) asFunction: #(event))