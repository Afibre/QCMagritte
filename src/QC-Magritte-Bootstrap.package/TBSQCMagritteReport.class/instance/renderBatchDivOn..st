rendering-batch
renderBatchDivOn: html

	html div
		class: 'pagination' ;
		with: [
			html twbsUnorderedList with: [
				self showBatchFirstLast
					ifTrue: [ self renderBatchFirstOn: html ].
				self showBatchPreviousNext
					ifTrue: [ self renderBatchPreviousOn: html ].
				self showBatchPages
					ifTrue: [ self renderBatchItemsOn: html ].
				self showBatchPreviousNext
					ifTrue: [ self renderBatchNextOn: html ].
				self showBatchFirstLast
					ifTrue: [ self renderBatchLastOn: html ] ] ]