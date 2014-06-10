rendering-batch
renderBatchItemsOn: html
	html tbsButtonGroup: [ 
		(self showBatchFirstLast or: [ self batchPageRangeStart = self defaultBatchPage ])
			ifFalse: [
				html tbsButton
					beExtraSmall;
					callback: [ self batchPage: self defaultBatchPage ];
					with: self defaultBatchPage ].

		(self batchPageRangeStart -1) > self defaultBatchPage
			ifTrue: [
				html tbsButton
					beExtraSmall;
					beDisabled;
					with: '...' ].

		self batchPageRange do: [ :index |
			html tbsButton
				bePrimaryIf: [ self batchPage = index ];
				beDisabledIf: [ self batchPage = index ];
				callback: [ self batchPage: index ];
				beExtraSmall;
				with: index ].
	
		self batchPageRangeEnd < (self batchMaxPages - 1)
			ifTrue: [
				html tbsButton
					beExtraSmall;
					beDisabled;
					with: '...' ].
		
		(self showBatchFirstLast or: [ self batchPageRangeEnd = self batchMaxPages ])
			ifFalse: [
				html tbsButton
					beExtraSmall;
					callback: [ self batchPage: self batchMaxPages ];
					with: self batchMaxPages ] ]
