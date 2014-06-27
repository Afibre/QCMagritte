accessing
selectedItems
	^self items select: [ :each | each selected ] thenCollect: [ :each | each target ]