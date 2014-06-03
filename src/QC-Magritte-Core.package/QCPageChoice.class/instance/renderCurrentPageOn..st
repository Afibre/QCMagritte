rendering
renderCurrentPageOn: canvas
	self currentPage
		ifNil:  [ self renderErrorOn: canvas ]
		ifNotNil: [ canvas render: self currentPage ] 