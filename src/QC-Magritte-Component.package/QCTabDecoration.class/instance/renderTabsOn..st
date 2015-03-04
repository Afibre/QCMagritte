rendering
renderTabsOn: canvas
	self decoratedComponent magritteDescription hasTabs
		ifTrue: [
			canvas unorderedList
				class: 'tab-menu';
				with: [ 
					QCTabRenderer component: self decoratedComponent on: canvas ] ].
	self decoratedComponent activeDescription ifNotNil: [
		canvas div
			class: 'tab-menu-ruler';
			with: [ canvas space ] ].
