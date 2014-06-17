rendering
renderTabsOn: canvas
	self decoratedComponent magritteDescription hasTabs
		ifTrue: [
			canvas break.
			canvas tbsNav beTabs; with: [ 
				QCBTabRenderer component: self decoratedComponent on: canvas ] ]