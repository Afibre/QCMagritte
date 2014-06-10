rendering
renderTableBatchOn: html
	self hasMoreThanOnePage ifTrue: [
		html tableRow: [
			html tableData
				class: 'batch';
				colSpan: self visibleColumns size;
				with: [
					self renderBatchDivOn: html ] ] ]