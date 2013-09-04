rendering
renderCellContent: anObject on: html
	(self isInEdit: anObject)
		ifTrue: [ self renderEditCellContent: anObject on: html ] 
		ifFalse: [ 
			self clearCacheFor: anObject.
			super renderCellContent: anObject on:  html ]