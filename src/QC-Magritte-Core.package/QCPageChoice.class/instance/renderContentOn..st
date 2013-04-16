rendering
renderContentOn: canvas
	self renderTabsOn: canvas. 
	currentPage 
		ifNil:  [ canvas text: 'Internal error in ', self class name ,': no current page set.' ]
		ifNotNil: [ canvas render: currentPage ]