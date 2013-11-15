accessing
activePage
	self currentPage ifNil: [ ^nil ].
	(self currentPage respondsTo: #activePage) ifFalse: [ ^self currentPage ].
	^self currentPage activePage